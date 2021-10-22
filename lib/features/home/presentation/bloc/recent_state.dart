part of 'recent_bloc.dart';

abstract class RecentState extends Equatable {
  const RecentState();

  @override
  List<Object> get props => [];
}

class RecentInitial extends RecentState {}

class RecentLoading extends RecentState {}

class RecentLoaded extends RecentState {
  final List<Comic> recentComics;

  const RecentLoaded({required this.recentComics});

  @override
  List<Object> get props => [recentComics];
}

class RecentError extends RecentState {
  final String message;

  const RecentError({required this.message});

  @override
  List<Object> get props => [message];
}
