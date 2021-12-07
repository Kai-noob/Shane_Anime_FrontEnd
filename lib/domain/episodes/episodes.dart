import 'package:freezed_annotation/freezed_annotation.dart';

part 'episodes.freezed.dart';

part 'episodes.g.dart';

@freezed
class Episodes with _$Episodes {
  const factory Episodes(
      {@JsonKey(ignore: true) String? id,
      @JsonKey(name: "comic_id") required String comicId,
      @JsonKey(name: "episode_name") required String episodeName,
      @JsonKey(name: "episode_number") required int episodeNumber,
      @JsonKey(name: "pdf_file") required String? pdfFile,
      @JsonKey(name: "drive_link") required String? driveLink,
      @JsonKey(ignore: true) int? episodeCount,
      @JsonKey(ignore: true) String? title,
      @JsonKey(ignore: true) String? coverPhoto,
      required Map<String, bool> like}) = _Episodes;

  factory Episodes.fromJson(Map<String, dynamic> json) =>
      _$EpisodesFromJson(json);
}
