import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movie_app/core/strings/constants.dart';
import 'package:movie_app/features/home/domain/usecases/get_limit_completed_comic.dart';
import '../../../../../core/error/failure.dart';
import '../../../domain/entities/comic.dart';
import '../../../domain/usecases/get_all_completed_comic.dart';

part 'complete_event.dart';
part 'complete_state.dart';

class CompleteBloc extends Bloc<CompleteEvent, CompleteState> {
  final GetCompletedComic _getCompletedComicUseCase;
  final GetLimitComplteeComic _getLimitComplteeComic;
  CompleteBloc(this._getCompletedComicUseCase, this._getLimitComplteeComic)
      : super(LimitCompleteLoading());

  @override
  Stream<CompleteState> mapEventToState(CompleteEvent event) async* {
    if (event is FetchAllCompleteComic) {
      yield AllCompleteLoading();
      final failureOrSuccess = await _getCompletedComicUseCase.call();
      yield* _eitherAllComicOrErrorState(failureOrSuccess);
    }
    if (event is FetchLimitCompleteComic) {
      yield LimitCompleteLoading();
      final failureOrSuccess = await _getLimitComplteeComic.call();
      yield* _eitherLimitComicOrErrorState(failureOrSuccess);
    }
  }

  Stream<CompleteState> _eitherAllComicOrErrorState(
    Either<Failure, List<Comic>> failureOrSuccess,
  ) async* {
    yield failureOrSuccess.fold(
      (failure) => AllCompleteError(message: _mapFailureToMessage(failure)),
      (completeComics) => AllCompleteLoaded(completeComics: completeComics),
    );
  }

  Stream<CompleteState> _eitherLimitComicOrErrorState(
    Either<Failure, List<Comic>> failureOrSuccess,
  ) async* {
    yield failureOrSuccess.fold(
      (failure) => LimitCompleteError(message: _mapFailureToMessage(failure)),
      (completeComics) => LimitCompleteLoaded(completeComics: completeComics),
    );
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return serverMessage;
      default:
        return 'Unexpected Error';
    }
  }
}
