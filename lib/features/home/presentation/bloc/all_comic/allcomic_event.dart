part of 'allcomic_bloc.dart';

abstract class AllcomicEvent extends Equatable {
  const AllcomicEvent();

  @override
  List<Object> get props => [];
}

class FetchAllComic extends AllcomicEvent {}

class FetchAllLimitComic extends AllcomicEvent {}
