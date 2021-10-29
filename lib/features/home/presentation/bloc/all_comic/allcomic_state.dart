part of 'allcomic_bloc.dart';

abstract class AllcomicState extends Equatable {
  const AllcomicState();

  @override
  List<Object> get props => [];
}

class AllComicLoading extends AllcomicState {}

class AllComicLoaded extends AllcomicState {
  final List<Comic> allComics;

  const AllComicLoaded({required this.allComics});

  @override
  List<Object> get props => [allComics];
}

class AllComicError extends AllcomicState {
  final String message;

  const AllComicError({required this.message});

  @override
  List<Object> get props => [message];
}

class AllLimitComicLoading extends AllcomicState {}

class AllLimitComicLoaded extends AllcomicState {
  final List<Comic> allLimitComics;

  const AllLimitComicLoaded({required this.allLimitComics});

  @override
  List<Object> get props => [allLimitComics];
}

class AllLimitComicError extends AllcomicState {
  final String message;

  const AllLimitComicError({required this.message});

  @override
  List<Object> get props => [message];
}
