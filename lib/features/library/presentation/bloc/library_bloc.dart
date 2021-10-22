import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/features/home/domain/entities/comic.dart';
import 'package:movie_app/features/library/domain/entities/favourite_comic.dart';

import 'package:movie_app/features/library/domain/usecases/get_fav_comic.dart';
import 'package:movie_app/features/library/domain/usecases/toggle_fav_comic.dart';

part 'library_event.dart';
part 'library_state.dart';

const String serverFailure = "Server Error";

class LibraryBloc extends Bloc<LibraryEvent, LibraryState> {
  final GetFavouriteComicUseCase _getFavouriteComics;

  final ToggleFavouriteComicsUseCase _toggleFavouriteComics;
  LibraryBloc(this._getFavouriteComics, this._toggleFavouriteComics)
      : super(FavouriteComicLoading());

  @override
  Stream<LibraryState> mapEventToState(LibraryEvent event) async* {
    if (event is FetchFavouriteComic) {
      yield FavouriteComicLoading();
      final failureOrSuccess = await _getFavouriteComics.call();
      yield* _eitherSuccessOrErrorState(failureOrSuccess);
    }
    if (event is ToggleFavouriteComic) {
      final failureOrSuccess = await _toggleFavouriteComics.call(
          comicId: event.comicId, favouriteComic: event.favouriteComic);

      yield* _eitherSuccessOrErrorState2(failureOrSuccess);
    }
  }

  Stream<LibraryState> _eitherSuccessOrErrorState(
    Either<Failure, List<FavouriteComic>> failureOrSuccess,
  ) async* {
    yield failureOrSuccess.fold(
      (failure) => FavouriteComicError(message: _mapFailureToMessage(failure)),
      (favouriteComics) =>
          FavouriteComicSuccess(favouriteComics: favouriteComics),
    );
  }

  Stream<LibraryState> _eitherSuccessOrErrorState2(
    Either<Failure, void> failureOrSuccess,
  ) async* {
    yield failureOrSuccess.fold(
      (failure) => FavouriteComicError(message: _mapFailureToMessage(failure)),
      (isFavourite) => AddedToFavoruite(),
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
