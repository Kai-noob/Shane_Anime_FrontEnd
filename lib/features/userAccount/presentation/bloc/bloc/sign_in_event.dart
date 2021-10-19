part of 'sign_in_bloc.dart';

abstract class SignInEvent extends Equatable {
  const SignInEvent();

  @override
  List<Object> get props => [];
}

class AuthenticatedWithEmail extends SignInEvent {
  final String email;
  final String password;

  AuthenticatedWithEmail(this.email, this.password);

  @override
  // TODO: implement props
  List<Object> get props => [email, password];
}
