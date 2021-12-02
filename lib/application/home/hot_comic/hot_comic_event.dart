part of 'hot_comic_bloc.dart';

@freezed
class HotComicEvent with _$HotComicEvent {
  const factory HotComicEvent.getMoreHotComics() = _GetMoreHotComics;
  const factory HotComicEvent.getHomeHotComics() = _GetHomeHotComics;
}
