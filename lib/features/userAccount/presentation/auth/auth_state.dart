part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {}

class Loading extends AuthState {}

class SignUpError extends AuthState {
  final String message;

  const SignUpError({required this.message});

  @override
  List<Object> get props => [message];
}

class SignUpSuccess extends AuthState {}

class SignInError extends AuthState {
  final String message;

  const SignInError({required this.message});

  @override
  List<Object> get props => [message];
}

class SignInSuccess extends AuthState {}

class SignOutSuccess extends AuthState {}

class SignOutError extends AuthState {
  final String message;

  const SignOutError({required this.message});

  @override
  List<Object> get props => [message];
}
