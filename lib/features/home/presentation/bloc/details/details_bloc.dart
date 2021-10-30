import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import '../../../../../core/strings/constants.dart';
import '../../../../genre/domain/entities/genre.dart';
import '../../../../genre/domain/usecases/get_genre_usecase.dart';

import '../../../domain/entities/episodes.dart';
import '../../../domain/usecases/check_pdf_or_images.dart';
import '../../../domain/usecases/get_images.dart';
import '../../../domain/usecases/get_pdf.dart';
import '../../../../../core/error/failure.dart';

import '../../../domain/usecases/get_episodes.dart';

part 'details_event.dart';
part 'details_state.dart';

class DetailsBloc extends Bloc<DetailsEvent, DetailsState> {
  final GetEpisodes _getEpisodesUseCase;
  final GetImages _getPhotosUseCase;
  final CheckPdfOrImages _checkUseCase;
  final GetPdf _getPdfUseCase;
  DetailsBloc(this._getEpisodesUseCase, this._getPhotosUseCase,
      this._checkUseCase, this._getPdfUseCase)
      : super(CheckEvent());

  @override
  Stream<DetailsState> mapEventToState(DetailsEvent event) async* {
    if (event is FetchEpisode) {
      yield EpisodeLoading();
      final failureOrSuccess = await _getEpisodesUseCase.call(event.comicId);
      yield* _eitherEpisodesOrErrorState(failureOrSuccess);
    }

    if (event is CheckPdfOrImagesEvent) {
      bool checked = await _checkUseCase.call(
          event.comicId, event.episodeName, event.episodeNumber);
      if (checked) {
        yield ImagesLoading();
        final failureOrSuccess = await _getPdfUseCase.call(
            event.comicId, event.episodeName, event.episodeNumber);
        yield* _eitherPdfOrErrorState(failureOrSuccess);
      } else {
        yield PDFLoading();
        final failureOrSuccess = await _getPhotosUseCase.call(
            event.comicId, event.episodeName, event.episodeNumber);
        yield* _eitherImagesOrErrorState(failureOrSuccess);
      }
    }
  }

  Stream<DetailsState> _eitherEpisodesOrErrorState(
    Either<Failure, List<Episode>> failureOrSuccess,
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
        return serverMessage;
      default:
        return 'Unexpected Error';
    }
  }
}
