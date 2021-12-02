import 'package:freezed_annotation/freezed_annotation.dart';

part 'upcoming_comic.freezed.dart';
part 'upcoming_comic.g.dart';

@freezed
class Upcomingcomic with _$Upcomingcomic {
  const factory Upcomingcomic({
    required String title,
    // ignore: invalid_annotation_target
    @JsonKey(name: "cover_photo") required String coverPhoto,
    required String review,
    // ignore: invalid_annotation_target
    @JsonKey(name: "episode_number") required String episodeNumber,
    // ignore: invalid_annotation_target
    @JsonKey(name: "release_date") required String releaseDate,
  }) = _Upcomingcomic;

  factory Upcomingcomic.fromJson(Map<String, dynamic> json) =>
      _$UpcomingcomicFromJson(json);
}
