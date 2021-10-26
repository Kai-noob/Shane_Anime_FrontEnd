part of 'complete_bloc.dart';

abstract class CompleteState extends Equatable {
  const CompleteState();

  @override
  List<Object> get props => [];
}

class CompleteInitial extends CompleteState {}

class CompleteLoaded extends CompleteState {
  final List<Comic> completeComics;

  const CompleteLoaded({required this.completeComics});

  @override
  List<Object> get props => [completeComics];
}

class CompleteLoading extends CompleteState {}

class CompleterError extends CompleteState {
  final String message;

  const CompleterError({required this.message});

  @override
  List<Object> get props => [message];
}
