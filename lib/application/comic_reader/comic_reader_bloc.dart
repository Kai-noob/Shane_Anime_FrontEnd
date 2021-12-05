import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/domain/episodes/episodes.dart';
import '../../domain/comic/comic_failure.dart';
import '../../domain/comic/i_comic_repository.dart';

part 'comic_reader_event.dart';
part 'comic_reader_state.dart';
part 'comic_reader_bloc.freezed.dart';

@injectable
class ComicReaderBloc extends Bloc<ComicReaderEvent, ComicReaderState> {
  final IComicRepository _comicRepo;

  ComicReaderBloc(this._comicRepo) : super(const ComicReaderState.loading()) {
    on<ComicReaderEvent>(_getPdfEvent);
  }

  Future<void> _getPdfEvent(
      ComicReaderEvent event, Emitter<ComicReaderState> emit) async {
    await event.map(checkPdf: (e) async {
      bool checked =
          await _comicRepo.checkPdf(e.comicId, e.episodeName, e.episodeNumber);

      if (checked) {
        final failureOrSuccess =
            await _comicRepo.getPdf(e.comicId, e.episodeName, e.episodeNumber);
        emit(failureOrSuccess.fold((l) => ComicReaderState.error(l),
            (r) => ComicReaderState.pdfLoaded(r)));
      } else {
        final failureOrSuccess =
            await _comicRepo.getPdf(e.comicId, e.episodeName, e.episodeNumber);
        emit(failureOrSuccess.fold((l) => ComicReaderState.error(l),
            (r) => ComicReaderState.driveLoaded(r)));
      }
    }, changePdf: (e) async {
      emit(const ComicReaderState.loading());
      final Either<ComicFailure, Episodes> failureOrSuccess =
          await _comicRepo.getPdf(e.comicId, e.episodeName, e.episodeNumber);
      emit(failureOrSuccess.fold((l) => ComicReaderState.error(l),
          (r) => ComicReaderState.chgEpisodeSuccess(r)));
    });
  }
}
