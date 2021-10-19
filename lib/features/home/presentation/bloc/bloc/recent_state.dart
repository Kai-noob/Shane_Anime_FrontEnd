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

  RecentLoaded({required this.recentComics});

  @override
  List<Object> get props => [recentComics];
}

class RecentError extends RecentState {
  final String message;

  RecentError({required this.message});

  @override
  // TODO: implement props
  List<Object> get props => [message];
}
