
import 'package:equatable/equatable.dart';

abstract class VerifyEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class OtpVerify extends VerifyEvent {
  final String mobileNumber;
  final String otpController;
  final bool isSignUp;
  final String? aadharNumber;
  final String? userName;
  OtpVerify(this.mobileNumber,this.otpController,this.isSignUp,this.aadharNumber,this.userName);
  @override
  List<Object> get props => [mobileNumber,otpController];
}
