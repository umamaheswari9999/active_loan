import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

import '../../domain/entity/my_loans.dart';

@immutable
abstract class MyLoansState extends Equatable {
  const MyLoansState();
  @override
  List<Object?> get props => [];
}

class MyLoansStateInitial extends MyLoansState {}

class MyLoansStateLoading extends MyLoansState {}

class MyLoansStateSuccess extends MyLoansState {
  final List<MyLoans> myloans;
  const MyLoansStateSuccess({required this.myloans});
}

class MyLoansStateFailure extends MyLoansState {
  final String? message;

  const MyLoansStateFailure(this.message);
}
