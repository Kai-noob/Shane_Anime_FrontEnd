part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class CreateAccountWithEmail extends AuthEvent {
  final String userName;
  final String email;
  final String password;

  const CreateAccountWithEmail(this.userName, this.email, this.password);

  @override
  List<Object> get props => [userName, email, password];
}

class SignInWithEmail extends AuthEvent {
  final String email;
  final String password;

  const SignInWithEmail(this.email, this.password);

  @override
  List<Object> get props => [email, password];
}

class SignOut extends AuthEvent {}
