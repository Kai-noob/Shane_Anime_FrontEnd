part of 'complete_bloc.dart';

abstract class CompleteEvent extends Equatable {
  const CompleteEvent();

  @override
  List<Object> get props => [];
}

class FetchCompleteComic extends CompleteEvent {}
