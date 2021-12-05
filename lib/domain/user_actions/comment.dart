import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/domain/auth/user.dart';
import 'package:movie_app/domain/episodes/episodes.dart';
import '../comic/comic.dart';

part 'comment.freezed.dart';
part 'comment.g.dart';

@freezed
class Comments with _$Comments {
  const factory Comments(
      {
      // ignore: invalid_annotation_target
      @JsonKey(ignore: true) String? commentId,
      required String comment,
      @TimestampConverter() required DateTime timestamp,
      required String episodeId,
      required String userId,
      @JsonKey(ignore: true) AppUser? user}) = _Comments;

  factory Comments.fromJson(Map<String, dynamic> json) =>
      _$CommentsFromJson(json);
}
