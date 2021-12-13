part of 'episodes_bloc.dart';

@freezed
class EpisodesEvent with _$EpisodesEvent {
  const factory EpisodesEvent.getEpisodes() = _GetEpisodes;
  const factory EpisodesEvent.getEpisode(String episodeId) = _GetEpisode;
  const factory EpisodesEvent.getLatestEpisodes(String comicId) =
      _GetLatestEpisodes;
}
