import 'dart:developer' as logger;
import 'package:active_loan/auth/domain/repo/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'otp_verification_event.dart';
import 'otp_verification_state.dart';
 @injectable
class VerifyBloc extends Bloc<VerifyEvent, VerifyState> {
  final AuthRepository verifyRepo;
  VerifyBloc(this.verifyRepo) : super(VerifyStateInitial()) {
    on<OtpVerify>((event, emit) async {
      emit(VerifyStateLoading());
      try {
        if(event.isSignUp){
         var res =  await verifyRepo.createUser(event.mobileNumber,event.otpController,event.aadharNumber,event.userName);
         if (res == true) {
           emit(const VerifyStateSuccess(true));
         } else {
           emit(const VerifyStateSuccess(false));
         }
        }else{
          var res = await verifyRepo.verifyOtp(event.mobileNumber,event.otpController);
          if (res == true) {
            emit(const VerifyStateSuccess(true));
          } else {
            emit(const VerifyStateSuccess(false));
          }
        }
      } catch (err, st) {
        logger.log(err.toString());
        logger.log(st.toString());
        emit(const VerifyStateFailure('Verification Failed'));
      }
    });
  }
}
