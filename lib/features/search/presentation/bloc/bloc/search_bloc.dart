import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:movie_app/features/search/domain/entities/searchcomic.dart';
import 'package:movie_app/features/search/domain/usecases/search_comic_usecase.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchComicUseCase _searchComicUseCase;
  SearchBloc(this._searchComicUseCase) : super(SearchInitial()) {
    on<SearchEvent>((event, emit) async {
      if (event is SearchComics) {
        emit(SearchLoading());
        List<SearchComic> searchComics =
            await _searchComicUseCase.call(query: event.query);

        emit(SearchLoaded(searchComics));
      }
    });
  }
}
