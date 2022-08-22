part of 'sign_in_bloc.dart';

@immutable
abstract class SignInEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class UserSignIn extends SignInEvent {
  final String mobileNumber;
  final String? aadharNumber;
  final String? customerName;
  final bool isSignUp;
  UserSignIn(this.mobileNumber, this.aadharNumber, this.customerName, this.isSignUp);
  @override
  List<Object?> get props => [mobileNumber,aadharNumber,customerName];
}
