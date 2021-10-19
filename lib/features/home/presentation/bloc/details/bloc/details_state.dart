part of 'details_bloc.dart';

abstract class DetailsState extends Equatable {
  const DetailsState();

  @override
  List<Object> get props => [];
}

class DetailsInitial extends DetailsState {}

class DetailsLoaded extends DetailsState {
  final List<Episodes> episodes;

  DetailsLoaded({required this.episodes});

  @override
  List<Object> get props => [episodes];
}

class DetailsLoading extends DetailsState {}

class DetailsError extends DetailsState {
  final String message;

  DetailsError({required this.message});

  @override
  List<Object> get props => [message];
}
