import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../episodes/episodes.dart';
import '../genre/genre.dart';

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
  const factory Comic(
      {@JsonKey(ignore: true) String? id,
      required String title,
      @JsonKey(name: "cover_photo") required String coverPhoto,
      required String review,
      @JsonKey(name: "editor_choice") required bool editorChoice,
      required bool published,
      required bool completed,
      @TimestampConverter() required DateTime created,
      @JsonKey(ignore: true) List<Genre>? genres,
      @JsonKey(ignore: true) List<Episodes>? episodes}) = _Comic;

  factory Comic.fromJson(Map<String, dynamic> json) => _$ComicFromJson(json);

  factory Comic.fromFirebase(DocumentSnapshot doc, List<Genre> genres) {
    return Comic.fromJson(doc.data() as Map<String, dynamic>)
        .copyWith(id: doc.id, genres: genres);
  }
}
