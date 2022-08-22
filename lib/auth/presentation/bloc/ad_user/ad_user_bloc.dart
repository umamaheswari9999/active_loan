import 'dart:developer' as logger;
import 'package:active_loan/auth/data/model/user_dto.dart';
import 'package:active_loan/auth/domain/repo/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'ad_user_event.dart';
import 'ad_user_state.dart';
@injectable
class UserCheckBloc extends Bloc<AduserCheckEvent, AduserCheckState> {
  final AuthRepository userCheckRepo;
  UserCheckBloc(this.userCheckRepo) : super(AduserCheckStateInitial()) {
    on<UserCheck>((event, emit) async {
      emit(AduserCheckStateLoading());
      try {
        List<AdUserdetails> res = await userCheckRepo.isClientExist(event.mobileNumber);
        if (res.isEmpty) {
          var res = await userCheckRepo.createUser(event.mobileNumber, event.otpController,null,null);
          if (res == true) {
            List<AdUserdetails> res = await userCheckRepo.isClientExist(event.mobileNumber);
            if (res[0].ldsClientmaster != null) {
              emit(const AduserCheckStateSuccess(true));
            } else {
              emit(const AduserCheckStateSuccess(false));
            }
          }
        } else {
          if (res[0].ldsClientmaster != null) {
            emit(const AduserCheckStateSuccess(true));
          } else if (res[0].ldsClientmaster == null) {
            emit(const AduserCheckStateSuccess(false));
          }
        }
      } catch (err, st) {
        logger.log(err.toString());
        logger.log(st.toString());
        emit(const AduserCheckStateFailure('Verification Failed'));
      }
    });
  }
}
