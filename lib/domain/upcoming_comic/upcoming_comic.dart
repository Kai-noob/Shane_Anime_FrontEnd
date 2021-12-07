import 'package:freezed_annotation/freezed_annotation.dart';

part 'upcoming_comic.freezed.dart';
part 'upcoming_comic.g.dart';

@freezed
class Upcomingcomic with _$Upcomingcomic {
  const factory Upcomingcomic({
    required String title,
    @JsonKey(name: "cover_photo") required String coverPhoto,
    required String review,
    @JsonKey(name: "episode_number") required String episodeNumber,
    @JsonKey(name: "release_date") required String releaseDate,
  }) = _Upcomingcomic;

  factory Upcomingcomic.fromJson(Map<String, dynamic> json) =>
      _$UpcomingcomicFromJson(json);
}
