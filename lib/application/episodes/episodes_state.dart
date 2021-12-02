part of 'episodes_bloc.dart';

@freezed
class EpisodesState with _$EpisodesState {
  const factory EpisodesState.initial() = _Initial;
  const factory EpisodesState.loading() = _Loading;
  const factory EpisodesState.error() = _Error;
  const factory EpisodesState.loaded(List<Episodes> episodes) = _Loaded;
  const factory EpisodesState.episodeLoaded(Episodes episodes) = _EpisodeLoaded;
}
