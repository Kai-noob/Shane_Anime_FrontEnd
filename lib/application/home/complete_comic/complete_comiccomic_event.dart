part of 'complete_comic_bloc.dart';

@freezed
class CompleteComicEvent with _$CompleteComicEvent {
  const factory CompleteComicEvent.getHomeCompletedComics() =
      _GetHomeCompletedComics;
  const factory CompleteComicEvent.getMoreCompletedComics() =
      _GetMoreCompletedComics;
}
