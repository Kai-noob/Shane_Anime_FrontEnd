part of 'hot_bloc.dart';

abstract class HotEvent extends Equatable {
  const HotEvent();

  @override
  List<Object> get props => [];
}

class FetchAllHotComic extends HotEvent {}

class FetchLimitHotComic extends HotEvent {}
