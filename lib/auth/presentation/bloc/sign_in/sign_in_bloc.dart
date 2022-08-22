import 'dart:math';
import 'dart:developer' as logger;
import 'package:active_loan/auth/data/model/user_dto.dart';
import 'package:active_loan/di/injection.dart';
import 'package:equatable/equatable.dart';
import 'package:active_loan/auth/domain/repo/auth_repository.dart';
import 'package:active_loan/shared/failure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
part 'sign_in_event.dart';
part 'sign_in_state.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final AuthRepository signInRepo;
  SignInBloc(this.signInRepo) : super(SignInStateInitial()) {
    on<UserSignIn>((event, emit) async {
      emit(SignInStateLoading());
      try {
        if (event.isSignUp) {
          var res = await signInRepo.sendOtp(event.mobileNumber, Otpgenerator());
          print(res);
          res.fold((l) => emit(SignInStateFailure(l)), (r) {
            if(r){
              return emit(const SignInStateSuccess(true));
            }else{
              return emit(const SignInStateSuccess(false));
            }
          });
        } else {
          var res = await signInRepo.sendOtp(event.mobileNumber, Otpgenerator());
          emit(await res.fold((l) {
            return SignInStateFailure(l);
          }, (r) async {
            final userList = await signInRepo.isClientExist(event.mobileNumber);
            if (userList.isNotEmpty) {
              if (!locator.isRegistered<AdUserdetails>()) {
                locator.registerSingleton<AdUserdetails>(userList.first);
              }
              return const SignInStateSuccess(true);
            } else {
              return  SignInStateFailure(Failure.unknownFailure());
            }
          }));
        }
      } catch (err, st) {
        logger.log(err.toString());
        logger.log(st.toString());
        emit(SignInStateFailure(Failure.apiFailure(err.toString())));
      }
    });
  }
  String Otpgenerator() {
    Random random = Random();
    String number = '';
    for (int i = 0; i < 6; i++) {
      number = number + random.nextInt(9).toString();
    }
    return number;
  }
}
