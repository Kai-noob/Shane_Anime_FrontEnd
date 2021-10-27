part of 'hot_bloc.dart';

abstract class HotState extends Equatable {
  const HotState();

  @override
  List<Object> get props => [];
}

class HotAllComicLoading extends HotState {}

class HotAllComicLoaded extends HotState {
  final List<Comic> hotComics;

  const HotAllComicLoaded({required this.hotComics});

  @override
  List<Object> get props => [hotComics];
}

class HotAllComicError extends HotState {
  final String message;

  const HotAllComicError({required this.message});

  @override
  List<Object> get props => [message];
}

class HotLimitComicLoading extends HotState {}

class HotLimitComicLoaded extends HotState {
  final List<Comic> hotComics;

  const HotLimitComicLoaded({required this.hotComics});

  @override
  List<Object> get props => [hotComics];
}

class HotLimitComicError extends HotState {
  final String message;

  const HotLimitComicError({required this.message});

  @override
  List<Object> get props => [message];
}
