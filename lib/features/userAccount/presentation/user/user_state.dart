part of 'user_bloc.dart';

abstract class UserState extends Equatable {
  const UserState();

  @override
  List<Object> get props => [];
}

class UserInitial extends UserState {}

class UserProfileSuccess extends UserState {
  final UserEntity user;

  const UserProfileSuccess({required this.user});

  @override
  List<Object> get props => [user];
}

class UserProfileError extends UserState {
  final String message;

  const UserProfileError({required this.message});

  @override
  List<Object> get props => [message];
}

class UserProfileLoading extends UserState {}
