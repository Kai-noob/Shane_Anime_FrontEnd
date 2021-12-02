import 'package:freezed_annotation/freezed_annotation.dart';

part 'episodes.freezed.dart';

part 'episodes.g.dart';

@freezed
class Episodes with _$Episodes {
  const factory Episodes(
      // ignore: invalid_annotation_target
      {@JsonKey(ignore: true) String? id,
      // ignore: invalid_annotation_target
      @JsonKey(name: "comic_id") required String comicId,
      // ignore: invalid_annotation_target
      @JsonKey(name: "episode_name") required String episodeName,
      // ignore: invalid_annotation_target
      @JsonKey(name: "episode_number") required int episodeNumber,
      // ignore: invalid_annotation_target
      @JsonKey(name: "pdf_file") required String? pdfFile,
      // ignore: invalid_annotation_target
      @JsonKey(name: "drive_link") required String? driveLink,
      // ignore: invalid_annotation_target
      @JsonKey(ignore: true) int? episodeCount,
      // ignore: invalid_annotation_target
      @JsonKey(ignore: true) String? title,
      // ignore: invalid_annotation_target
      @JsonKey(ignore: true) String? coverPhoto,
      required Map<String, bool> like}) = _Episodes;

  factory Episodes.fromJson(Map<String, dynamic> json) =>
      _$EpisodesFromJson(json);
}
