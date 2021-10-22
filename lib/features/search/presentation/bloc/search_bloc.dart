import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import '../../../../core/error/failure.dart';
import '../../domain/entities/searchcomic.dart';
import '../../domain/usecases/search_comic_usecase.dart';

part 'search_event.dart';
part 'search_state.dart';

const String serverFalilure = "Something went FJSDLKJ";

const String searchFailure = "No Comics Found";

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchComicUseCase _searchComicUseCase;
  SearchBloc(this._searchComicUseCase) : super(SearchInitial());

  @override
  Stream<SearchState> mapEventToState(SearchEvent event) async* {
    if (event is SearchComicEvent) {
      yield SearchLoading();
      if (event.query.isEmpty) {
        yield SearchQueryEmpty();
      }
      final failureOrSuccess =
          await _searchComicUseCase.call(query: event.query);
      // final failureOrSuccess2 = await _getRecentComic.call();

      yield* _eitherSuccessOrErrorState(failureOrSuccess);
    }
  }

  Stream<SearchState> _eitherSuccessOrErrorState(
    Either<Failure, List<SearchComic>> failureOrSuccess,
  ) async* {
    yield failureOrSuccess.fold(
      (failure) => SearchError(message: _mapFailureToMessage(failure)),
      (searchComics) => SearchLoaded(searchComics: searchComics),
    );
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return serverFalilure;
      case SearchFailure:
        return searchFailure;

      default:
        return 'Unexpected Error';
    }
  }
}
