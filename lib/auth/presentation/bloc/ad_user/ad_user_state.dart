import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
@immutable
abstract class AduserCheckState extends Equatable {
  const AduserCheckState();
  @override
  List<Object?> get props => [];
}

class AduserCheckStateInitial extends AduserCheckState {}


class AduserCheckStateLoading extends AduserCheckState {}

class AduserCheckStateSuccess extends AduserCheckState {
  final bool aduserCheckStatus;
  const AduserCheckStateSuccess(this.aduserCheckStatus);
}

class AduserCheckStateFailure extends AduserCheckState {
  final String? message;

  const AduserCheckStateFailure(this.message);
}