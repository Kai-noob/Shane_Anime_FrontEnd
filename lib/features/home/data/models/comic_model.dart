import 'package:cloud_firestore/cloud_firestore.dart';
import '../../domain/entities/episodes.dart';

import '../../../genre/domain/entities/genre.dart';
import '../../domain/entities/comic.dart';

class ComicModel extends Comic {
  ComicModel(
      {String? id,
      required String title,
      required String coverPhoto,
      required String review,
      required bool editorChoice,
      required bool published,
      required bool completed,
      required Timestamp created,
      int? episodeCount,
      List<Genre>? genres,
      List<Episode>? episodes})
      : super(id!, title, coverPhoto, review, editorChoice, published,
            completed, created, episodeCount!, genres!, episodes!);

  static ComicModel fromJson(Map<String, dynamic> json) {
    return ComicModel(
        title: json['title'],
        coverPhoto: json['cover_photo'],
        review: json['review'],
        editorChoice: json['editor_choice'],
        published: json['published'],
        completed: json['completed'],
        created: json['created']);
  }

  Map<String, dynamic> toJson() {
    return {
      "title": title,
      "coverPhoto": coverPhoto,
      "review": review,
      "editorChoice": editorChoice,
      "published": published,
      "completed": completed,
      "created": created
    };
  }
}
