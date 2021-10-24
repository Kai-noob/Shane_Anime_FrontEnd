import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/features/home/domain/entities/comic.dart';
import 'package:movie_app/features/library/domain/entities/favourite_comic.dart';
import 'package:movie_app/features/library/domain/usecases/check_fav_comic.dart';

import 'package:movie_app/features/library/domain/usecases/get_fav_comic.dart';
import 'package:movie_app/features/library/domain/usecases/save_fav_comic.dart';
import 'package:movie_app/features/library/domain/usecases/toggle_fav_comic.dart';

part 'library_event.dart';
part 'library_state.dart';

const String serverFailure = "Server Error";

class LibraryBloc extends Bloc<LibraryEvent, LibraryState> {
  final GetFavouriteComicUseCase _getFavouriteComics;

  final ToggleFavouriteComicsUseCase _toggleFavouriteComics;
  final CheckFavComiUseCase _checkFavComic;
  LibraryBloc(this._getFavouriteComics, this._toggleFavouriteComics,
      this._checkFavComic)
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

      yield* _eitherToggleOrErrorState(failureOrSuccess);
    }
    if (event is CheckFavouriteComic) {
      final isFavourite = await _checkFavComic.call(comicId: event.comicId);
      if (isFavourite) {
        yield RemovedFromFavourite();
      } else {}
      // }if(event is SaveFavComic){
      //   final failureOrSuccess=await _saveFavComic.call();
      //   yield* _eitherSuccessOrErrorState3(failureOrSuccess);
      // }
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
  //  Stream<LibraryState> _eitherSuccessOrErrorState2(
  //   Either<Failure, List<FavouriteComic>> failureOrSuccess,
  // ) async* {
  //   yield failureOrSuccess.fold(
  //     (failure) => FavouriteComicError(message: _mapFailureToMessage(failure)),
  //     (favouriteComics) =>
  //         FavouriteComicSuccess(favouriteComics: favouriteComics),
  //   );
  // }

  //    Stream<LibraryState> _eitherSuccessOrErrorState3(
  //   Either<Failure, FavouriteComic> failureOrSuccess,
  // ) async* {
  //   yield failureOrSuccess.fold(
  //     (failure) => FavouriteComicError(message: _mapFailureToMessage(failure)),
  //     (favouriteComics) =>
  //         SavedToFavourite(),
  //   );
  // }

  Stream<LibraryState> _eitherToggleOrErrorState(
    Either<Failure, bool> failureOrSuccess,
  ) async* {
    yield failureOrSuccess.fold(
      (failure) => FavouriteComicError(message: _mapFailureToMessage(failure)),
      (isFavourite) => AddedToFavoruite(isFavourite: isFavourite),
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
