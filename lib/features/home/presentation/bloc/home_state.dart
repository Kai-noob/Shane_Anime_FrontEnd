part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeInitial extends HomeState {}

class HomeError extends HomeState {
  final String message;

  HomeError({required this.message});

  @override
  // TODO: implement props
  List<Object> get props => [message];
}

class HomeError2 extends HomeState {
  final String message;

  HomeError2({required this.message});

  @override
  // TODO: implement props
  List<Object> get props => [message];
}

class HomeLoading extends HomeState {}

class HomeLoaded extends HomeState {
  final List<Comic> completeComics;

  HomeLoaded({required this.completeComics});

  @override
  // TODO: implement props
  List<Object> get props => [completeComics];
}
