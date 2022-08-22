import 'package:dartz/dartz.dart';
import 'package:active_loan/shared/failure.dart';
import '../../data/model/user_dto.dart';
abstract class AuthRepository {
  Future<Either<Failure, bool>> sendOtp(String mobileNo, otpSend);

  Future<List<AdUserdetails>> isClientExist(String mobileNo);

  Future<bool>? verifyOtp(String mobileNo, enterOtp);

  Future<bool>? createUser(String mobileNo, otpSend,aadharNumber,username);
}
