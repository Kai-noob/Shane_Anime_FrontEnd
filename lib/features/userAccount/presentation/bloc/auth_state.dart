part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {}

class Loading extends AuthState {}

class Error extends AuthState {
  final String message;

  Error({required this.message});

  @override
  // TODO: implement props
  List<Object> get props => [message];
}

class Authenticated extends AuthState {
  final UserEntity user;

  Authenticated({required this.user});

  @override
  List<Object> get props => [user];
}

class Unauthenticated extends AuthState {}
