part of 'search_bloc.dart';

abstract class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object> get props => [];
}

class SearchInitial extends SearchState {}

class SearchLoading extends SearchState {}

class SearchLoaded extends SearchState {
  final List<SearchComic> searchComics;

  SearchLoaded(this.searchComics);

  @override
  List<Object> get props => [searchComics];
}

class SearchError extends SearchState {
  final String error;

  SearchError(this.error);

  @override
  List<Object> get props => [error];
}
