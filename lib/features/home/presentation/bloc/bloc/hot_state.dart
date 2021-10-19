part of 'hot_bloc.dart';

abstract class HotState extends Equatable {
  const HotState();

  @override
  List<Object> get props => [];
}

class HotInitial extends HotState {}

class HotComicLoading extends HotState {}

class HotComicLoaded extends HotState {
  final List<Comic> hotComics;

  HotComicLoaded({required this.hotComics});

  @override
  List<Object> get props => [hotComics];
}

class HotComicError extends HotState {
  final String message;

  HotComicError({required this.message});

  @override
  // TODO: implement props
  List<Object> get props => [message];
}
