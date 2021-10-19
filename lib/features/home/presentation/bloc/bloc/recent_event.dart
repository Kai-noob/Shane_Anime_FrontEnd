part of 'recent_bloc.dart';

abstract class RecentEvent extends Equatable {
  const RecentEvent();

  @override
  List<Object> get props => [];
}

class FetchRecentComic extends RecentEvent {}
