part of 'all_comics_bloc.dart';

@freezed
class AllComicsEvent with _$AllComicsEvent {
  const factory AllComicsEvent.getMoreAllComics() = _GetMoreAllComics;
  const factory AllComicsEvent.getHomeAllComics() = _GetHomeAllComics;
}
