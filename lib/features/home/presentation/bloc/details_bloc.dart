import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movie_app/features/genre/domain/entities/genre.dart';
import 'package:movie_app/features/genre/domain/usecases/get_genre_usecase.dart';

import 'package:movie_app/features/home/domain/entities/episodes.dart';
import 'package:movie_app/features/home/domain/entities/photos.dart';
import 'package:movie_app/features/home/domain/usecases/check_pdf_or_images_usecase.dart';
import 'package:movie_app/features/home/domain/usecases/get_images_usecase.dart';
import 'package:movie_app/features/home/domain/usecases/get_pdf_usecase.dart';
import 'package:movie_app/features/home/presentation/view/pages/details/widgets/details_tab_bar.dart';
import '../../../../core/error/failure.dart';

import '../../domain/usecases/get_episodes_usecase.dart';

part 'details_event.dart';
part 'details_state.dart';

const String serverFailure = "Something went wrong";

class DetailsBloc extends Bloc<DetailsEvent, DetailsState> {
  final GetEpisodesUseCase _getEpisodesUseCase;
  final GetImagesUseCase _getPhotosUseCase;
  final CheckPdfOrImagesUseCase _checkUseCase;
  final GetPdfUseCase _getPdfUseCase;
  final GetGenreUsecase _genreUsecase;
  DetailsBloc(this._getEpisodesUseCase, this._getPhotosUseCase,
      this._checkUseCase, this._getPdfUseCase, this._genreUsecase)
      : super(DetailsInitial());

  @override
  Stream<DetailsState> mapEventToState(DetailsEvent event) async* {
    if (event is FetchEpisode) {
      yield EpisodeLoading();
      final failureOrSuccess = await _getEpisodesUseCase.call(event.comicId);
      yield* _eitherEpisodesOrErrorState(failureOrSuccess);
    }
    if (event is FetchGenre) {
      final failureOrSuccess = await _genreUsecase.call(event.comicId);
      yield* _eitherGenreOrErrorState(failureOrSuccess);
    }
    if (event is CheckPdfOrImages) {
      bool checked = await _checkUseCase.call(event.comicId, event.episodeName);
      if (checked) {
        yield ImagesLoading();
        final failureOrSuccess =
            await _getPdfUseCase.call(event.comicId, event.episodeName);
        yield* _eitherPdfOrErrorState(failureOrSuccess);
      } else {
        yield ImagesLoading();
        final failureOrSuccess =
            await _getPhotosUseCase.call(event.comicId, event.episodeName);
        yield* _eitherImagesOrErrorState(failureOrSuccess);
      }
    }
  }

  Stream<DetailsState> _eitherGenreOrErrorState(
    Either<Failure, List<Genre>> failureOrSuccess,
  ) async* {
    yield failureOrSuccess.fold(
      (failure) => GenreError(message: _mapFailureToMessage(failure)),
      (genres) => DetailsGenreLoaded(genres: genres),
    );
  }

  Stream<DetailsState> _eitherEpisodesOrErrorState(
    Either<Failure, List<RecentEpisode>> failureOrSuccess,
  ) async* {
    yield failureOrSuccess.fold(
      (failure) => EpisodeError(message: _mapFailureToMessage(failure)),
      (episodes) => EpisodeLoaded(episodes: episodes),
    );
  }

  Stream<DetailsState> _eitherImagesOrErrorState(
    Either<Failure, List<String>> failureOrSuccess,
  ) async* {
    yield failureOrSuccess.fold(
      (failure) => ImagesError(message: _mapFailureToMessage(failure)),
      (images) => ImagesLoaded(images: images),
    );
  }

  Stream<DetailsState> _eitherPdfOrErrorState(
    Either<Failure, String> failureOrSuccess,
  ) async* {
    yield failureOrSuccess.fold(
      (failure) => PdfError(message: _mapFailureToMessage(failure)),
      (pdf) => PdfLoaded(pdf: pdf),
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
