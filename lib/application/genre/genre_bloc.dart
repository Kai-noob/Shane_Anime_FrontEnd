import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domain/comic/comic.dart';
import '../../domain/comic/comic_failure.dart';
import '../../domain/genre/genre.dart';
import '../../domain/genre/i_genre_repository.dart';

part 'genre_event.dart';
part 'genre_state.dart';
part 'genre_bloc.freezed.dart';

@injectable
class GenreBloc extends Bloc<GenreEvent, GenreState> {
  final IGenreRepository _genreRepo;
  GenreBloc(this._genreRepo) : super(const GenreState.initial()) {
    on<GenreEvent>(_genreEvent);
  }

  Future<void> _genreEvent(GenreEvent event, Emitter<GenreState> emit) async {
    await event.map(getGenres: (e) async {
      emit(const GenreState.loading());
      final failureOrSuccess = await _genreRepo.getGenres();
      emit(failureOrSuccess.fold(
          (l) => GenreState.error(l), (r) => GenreState.loaded(r)));
    }, getComicsByGenres: (e) async {
      emit(const GenreState.loading());
      final failureOrSuccess = await _genreRepo.getComicsByGenres(e.genreId);
      emit(failureOrSuccess.fold(
          (l) => GenreState.error(l), (r) => GenreState.comicsLoaded(r)));
    }, getComicGenres: (e) async {
      emit(const GenreState.loading());
      final failureOrSuccess = await _genreRepo.getComicGenres(e.comicId);
      emit(failureOrSuccess.fold(
          (l) => GenreState.error(l), (r) => GenreState.loaded(r)));
    });
  }
}
