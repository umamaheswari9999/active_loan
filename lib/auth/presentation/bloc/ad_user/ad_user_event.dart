

import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class AduserCheckEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class UserCheck extends AduserCheckEvent {
  final String mobileNumber;
  final String otpController;

  UserCheck(this.mobileNumber,this.otpController);
  @override
  List<Object> get props => [mobileNumber,otpController];
}
