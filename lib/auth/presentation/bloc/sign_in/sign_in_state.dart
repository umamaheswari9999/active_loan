part of 'sign_in_bloc.dart';

@immutable
abstract class SignInState extends Equatable {
  const SignInState();
  @override
  List<Object?> get props => [];
}

class SignInStateInitial extends SignInState {}

class SignInStateLoading extends SignInState {}

class SignInStateSuccess extends SignInState {
  final bool signInStatus;
  const SignInStateSuccess(this.signInStatus);
}

class SignInStateFailure extends SignInState {
  final Failure failure;

  const SignInStateFailure(this.failure);
}
