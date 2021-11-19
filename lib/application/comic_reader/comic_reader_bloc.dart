import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/domain/comic/comic_failure.dart';
import 'package:movie_app/domain/comic/i_comic_repository.dart';

part 'comic_reader_event.dart';
part 'comic_reader_state.dart';
part 'comic_reader_bloc.freezed.dart';

@injectable
class ComicReaderBloc extends Bloc<ComicReaderEvent, ComicReaderState> {
  final IComicRepository _comicRepo;

  ComicReaderBloc(this._comicRepo) : super(const ComicReaderState.loading()) {
    on<GetPdf>(_getComicDetails);
  }

  void _getComicDetails(GetPdf event, Emitter<ComicReaderState> emit) async {
    final Either<ComicFailure, String> failureOrSuccess = await _comicRepo
        .getPdf(event.comicId, event.episodeName, event.episodeNumber);
    emit(failureOrSuccess.fold((l) => const ComicReaderState.error(),
        (r) => ComicReaderState.loaded(r)));
  }
}
