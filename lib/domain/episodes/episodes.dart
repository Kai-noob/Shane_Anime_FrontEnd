import 'package:freezed_annotation/freezed_annotation.dart';

part 'episodes.freezed.dart';

part 'episodes.g.dart';

@freezed
class Episodes with _$Episodes {
  const factory Episodes(
      {@JsonKey(name: "comic_id") required String comicId,
      @JsonKey(name: "episode_name") required String episodeName,
      @JsonKey(ignore: true) String? title,
      @JsonKey(ignore: true) String? coverPhoto,
      @JsonKey(name: "episode_number") required int episodeNumber}) = _Episodes;

  factory Episodes.fromJson(Map<String, dynamic> json) =>
      _$EpisodesFromJson(json);
}
