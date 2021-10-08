part of 'search_bloc.dart';

abstract class SearchEvent extends Equatable {
  const SearchEvent();

  @override
  List<Object> get props => [];
}

class SearchComics extends SearchEvent {
  final String query;

  SearchComics(this.query);

  @override
  // TODO: implement props
  List<Object> get props => [query];
}
