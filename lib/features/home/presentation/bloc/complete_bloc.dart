import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import '../../../../core/error/failure.dart';
import '../../domain/entities/comic.dart';
import '../../domain/usecases/get_completed_comic_usecase.dart';

part 'complete_event.dart';
part 'complete_state.dart';

const String serverFailure = "Something went wrong";

class CompleteBloc extends Bloc<CompleteEvent, CompleteState> {
  final GetCompletedComicUseCase _getCompletedComicUseCase;
  CompleteBloc(this._getCompletedComicUseCase) : super(CompleteLoading());

  @override
  Stream<CompleteState> mapEventToState(CompleteEvent event) async* {
    if (event is FetchCompleteComic) {
      yield CompleteLoading();
      final failureOrSuccess = await _getCompletedComicUseCase.call();
      yield* _eitherSuccessOrErrorState(failureOrSuccess);
    }
  }

  Stream<CompleteState> _eitherSuccessOrErrorState(
    Either<Failure, List<Comic>> failureOrSuccess,
  ) async* {
    yield failureOrSuccess.fold(
      (failure) => CompleterError(message: _mapFailureToMessage(failure)),
      (completeComics) => CompleteLoaded(completeComics: completeComics),
    );
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return serverFailure;
      default:
        return 'Unexpected Error';
    }
  }
}
