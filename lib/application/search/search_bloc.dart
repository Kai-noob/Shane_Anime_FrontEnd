import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domain/comic/comic.dart';
import '../../domain/comic/comic_failure.dart';
import '../../domain/comic/i_comic_repository.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final IComicRepository _comicRepo;
  SearchBloc(this._comicRepo) : super(const _Initial()) {
    on<SearchEvent>(_searchComics);
  }

  Future<void> _searchComics(
      SearchEvent event, Emitter<SearchState> emit) async {
    await event.map(searchComics: (e) async {
      emit(const SearchState.loading());
      final Either<ComicFailure, List<Comic>> failureOrSuccess =
          await _comicRepo.searchComics(e.title);
      emit(failureOrSuccess.fold(
          (l) => const SearchState.error(), (r) => SearchState.loaded(r)));
    });
  }
}
