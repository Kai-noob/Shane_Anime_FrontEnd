import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import '../../../../core/strings/constants.dart';
import '../../../../core/error/failure.dart';
import '../../domain/entities/genre.dart';
import '../../domain/usecases/get_comics_usecase.dart';
import '../../domain/usecases/get_genres_usecase.dart';
import '../../../home/domain/entities/comic.dart';

part 'genre_event.dart';
part 'genre_state.dart';

class GenreBloc extends Bloc<GenreEvent, GenreState> {
  final GetGenresUsecase _genresUsecase;
  final GetComicsUseCase _getComicsUseCase;

  GenreBloc(this._genresUsecase, this._getComicsUseCase)
      : super(GenreLoading());

  @override
  Stream<GenreState> mapEventToState(GenreEvent event) async* {
    if (event is FetchGenres) {
      yield GenreLoading();
      final failureOrSuccess = await _genresUsecase.call();
      yield* _eitherGenreOrErrorState(failureOrSuccess);
    }
    if (event is FetchComics) {
      yield ComicsLoading();
      final failureOrSuccess = await _getComicsUseCase.call(event.genreId);
      yield* _eitherComicOrErrorState(failureOrSuccess);
    }
  }

  Stream<GenreState> _eitherGenreOrErrorState(
    Either<Failure, List<Genre>> failureOrSuccess,
  ) async* {
    yield failureOrSuccess.fold(
      (failure) => GenreError(message: _mapFailureToMessage(failure)),
      (genres) => GenreSuccess(genres: genres),
    );
  }

  Stream<GenreState> _eitherComicOrErrorState(
    Either<Failure, List<Comic>> failureOrSuccess,
  ) async* {
    yield failureOrSuccess.fold(
      (failure) => ComicsError(message: _mapFailureToMessage(failure)),
      (comics) => ComicsSuccess(comics: comics),
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
