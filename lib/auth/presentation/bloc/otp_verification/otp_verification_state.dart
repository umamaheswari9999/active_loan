

import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class VerifyState extends Equatable {
  const VerifyState();
  @override
  List<Object?> get props => [];
}

class VerifyStateInitial extends VerifyState {}

class VerifyStateLoading extends VerifyState {}

class VerifyStateSuccess extends VerifyState {
  final bool verifyStatus;
  const VerifyStateSuccess(this.verifyStatus);
}

class VerifyStateFailure extends VerifyState {
  final String? message;

  const VerifyStateFailure(this.message);
}
