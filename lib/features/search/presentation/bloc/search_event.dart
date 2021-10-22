part of 'search_bloc.dart';

abstract class SearchEvent extends Equatable {
  const SearchEvent();

  @override
  List<Object> get props => [];
}

class SearchComicEvent extends SearchEvent {
  final String query;

  const SearchComicEvent(this.query);

  @override
  List<Object> get props => [query];
}
