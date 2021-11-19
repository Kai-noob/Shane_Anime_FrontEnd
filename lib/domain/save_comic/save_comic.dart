import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'save_comic.freezed.dart';
part 'save_comic.g.dart';

@freezed
class SaveComics with _$SaveComics {
  const factory SaveComics({required String id}) = _SaveComics;

  factory SaveComics.fromJson(Map<String, dynamic> json) =>
      _$SaveComicsFromJson(json);

  factory SaveComics.fromFirebase(DocumentSnapshot doc) {
    return SaveComics.fromJson(doc.data() as Map<String, dynamic>);
  }
}
