part of 'sign_in_bloc.dart';

abstract class SignInState extends Equatable {
  const SignInState();

  @override
  List<Object> get props => [];
}

class SignInInitial extends SignInState {}

class SignInLoading extends SignInState {}

class SignInError extends SignInState {
  final String message;

  SignInError({required this.message});

  @override
  // TODO: implement props
  List<Object> get props => [message];
}

class SignInSuccess extends SignInState {
  final UserEntity user;

  SignInSuccess({required this.user});

  @override
  List<Object> get props => [user];
}

class SignInFailed extends SignInState {}
