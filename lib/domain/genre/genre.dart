import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'genre.freezed.dart';
part 'genre.g.dart';

@freezed
class Genre with _$Genre {
  const factory Genre({
    // ignore: invalid_annotation_target
    @JsonKey(ignore: true) String? id,
    required String name,
    required String icon,
  }) = _Genre;

  factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);

  factory Genre.fromFirebase(DocumentSnapshot doc) {
    return Genre.fromJson(doc.data() as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }
}
