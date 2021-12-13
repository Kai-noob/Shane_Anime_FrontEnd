import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'comic.freezed.dart';
part 'comic.g.dart';

class TimestampConverter implements JsonConverter<DateTime, Timestamp> {
  const TimestampConverter();

  @override
  DateTime fromJson(Timestamp timestamp) {
    return timestamp.toDate();
  }

  @override
  Timestamp toJson(DateTime date) => Timestamp.fromDate(date);
}

@freezed
class Comic with _$Comic {
  const factory Comic({
    @JsonKey(ignore: true) String? id,
    required String title,
    @JsonKey(name: "cover_photo") required String coverPhoto,
    required String review,
    @JsonKey(name: "editor_choice") required bool editorChoice,
    required bool published,
    required bool completed,
    @TimestampConverter() required DateTime created,
  }) = _Comic;

  factory Comic.fromJson(Map<String, dynamic> json) => _$ComicFromJson(json);
}
