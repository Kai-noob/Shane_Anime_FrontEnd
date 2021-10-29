import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/core/strings/constants.dart';
import 'package:movie_app/features/home/domain/entities/comic.dart';
import 'package:movie_app/features/home/domain/usecases/get_all_comics.dart';
import 'package:movie_app/features/home/domain/usecases/get_all_limit_comics.dart';

part 'allcomic_event.dart';
part 'allcomic_state.dart';

class AllcomicBloc extends Bloc<AllcomicEvent, AllcomicState> {
  final GetAllComics _getAllComics;
  final GetLimitAllComics _getLimitAllComics;
  AllcomicBloc(this._getAllComics, this._getLimitAllComics)
      : super(AllLimitComicLoading());
  @override
  Stream<AllcomicState> mapEventToState(AllcomicEvent event) async* {
    if (event is FetchAllComic) {
      yield AllComicLoading();
      final failureOrSuccess = await _getAllComics.call();

      yield* _eitherAllComicOrErrorState(failureOrSuccess);
    }
    if (event is FetchAllLimitComic) {
      yield AllLimitComicLoading();
      final failureOrSuccess = await _getLimitAllComics.call();

      yield* _eitherLimitComicOrErrorState(failureOrSuccess);
    }
  }

  Stream<AllcomicState> _eitherAllComicOrErrorState(
    Either<Failure, List<Comic>> failureOrSuccess,
  ) async* {
    yield failureOrSuccess.fold(
      (failure) => AllComicError(message: _mapFailureToMessage(failure)),
      (allComics) => AllComicLoaded(allComics: allComics),
    );
  }

  Stream<AllcomicState> _eitherLimitComicOrErrorState(
    Either<Failure, List<Comic>> failureOrSuccess,
  ) async* {
    yield failureOrSuccess.fold(
      (failure) => AllLimitComicError(message: _mapFailureToMessage(failure)),
      (allLimitComics) => AllLimitComicLoaded(allLimitComics: allLimitComics),
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
