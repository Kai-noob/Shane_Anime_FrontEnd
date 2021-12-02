part of 'upcoming_comic_bloc.dart';

@freezed
class UpcomingComicState with _$UpcomingComicState {
  const factory UpcomingComicState.initial() = _Initial;
  const factory UpcomingComicState.loading() = _Loading;
  const factory UpcomingComicState.error() = _Error;
  const factory UpcomingComicState.loaded(List<Upcomingcomic> upcomingComics) =
      _Loaded;
}
