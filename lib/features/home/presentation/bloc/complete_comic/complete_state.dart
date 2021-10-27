part of 'complete_bloc.dart';

abstract class CompleteState extends Equatable {
  const CompleteState();

  @override
  List<Object> get props => [];
}

class AllCompleteLoaded extends CompleteState {
  final List<Comic> completeComics;

  const AllCompleteLoaded({required this.completeComics});

  @override
  List<Object> get props => [completeComics];
}

class AllCompleteLoading extends CompleteState {}

class AllCompleteError extends CompleteState {
  final String message;

  const AllCompleteError({required this.message});

  @override
  List<Object> get props => [message];
}

class LimitCompleteLoaded extends CompleteState {
  final List<Comic> completeComics;

  const LimitCompleteLoaded({required this.completeComics});

  @override
  List<Object> get props => [completeComics];
}

class LimitCompleteLoading extends CompleteState {}

class LimitCompleteError extends CompleteState {
  final String message;

  const LimitCompleteError({required this.message});

  @override
  List<Object> get props => [message];
}
