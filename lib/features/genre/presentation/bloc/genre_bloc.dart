import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/features/genre/domain/entities/genre.dart';
import 'package:movie_app/features/genre/domain/usecases/get_comic_by_genre_usecase.dart';
import 'package:movie_app/features/genre/domain/usecases/get_genres_usecase.dart';
import 'package:movie_app/features/home/domain/entities/comic.dart';

part 'genre_event.dart';
part 'genre_state.dart';

const String serverMessage = "Server Error";

class GenreBloc extends Bloc<GenreEvent, GenreState> {
  final GetGenresUsecase _genresUsecase;

  GenreBloc(this._genresUsecase) : super(GenreInitial());

  @override
  Stream<GenreState> mapEventToState(GenreEvent event) async* {
    if (event is FetchGenres) {
      final failureOrSuccess = await _genresUsecase.call();
      yield* _eitherSuccessOrErrorState(failureOrSuccess);
    }
  }

  Stream<GenreState> _eitherSuccessOrErrorState(
    Either<Failure, List<Genre>> failureOrSuccess,
  ) async* {
    yield failureOrSuccess.fold(
      (failure) => GenreError(message: _mapFailureToMessage(failure)),
      (genres) => GenreSuccess(genres: genres),
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
