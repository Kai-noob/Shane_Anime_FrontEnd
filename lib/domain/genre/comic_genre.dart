import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'comic_genre.freezed.dart';
part 'comic_genre.g.dart';

@freezed
class ComicGenre with _$ComicGenre {
  const factory ComicGenre({
    @JsonKey(name: "comic_id") required String comicId,
    @JsonKey(name: "genre_id") required String genreId,
  }) = _ComicGenre;

  factory ComicGenre.fromJson(Map<String, dynamic> json) =>
      _$ComicGenreFromJson(json);

  factory ComicGenre.fromFirebase(DocumentSnapshot doc) {
    return ComicGenre.fromJson(doc.data() as Map<String, dynamic>);
  }
}
