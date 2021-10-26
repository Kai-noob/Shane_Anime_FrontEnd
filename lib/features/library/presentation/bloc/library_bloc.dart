import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movie_app/core/strings/constants.dart';
import '../../../../core/error/failure.dart';
import '../../domain/entities/favourite_comic.dart';

import '../../domain/usecases/get_fav_comic.dart';
import '../../domain/usecases/toggle_fav_comic.dart';

part 'library_event.dart';
part 'library_state.dart';

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

      yield* _eitherToggleOrErrorState(failureOrSuccess);
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
        return serverMessage;
      default:
        return 'Unexpected Error';
    }
  }
}
