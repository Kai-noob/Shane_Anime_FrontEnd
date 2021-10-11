import 'package:cloud_firestore/cloud_firestore.dart';

import '../../domain/entities/searchcomic.dart';

class SearchComicModel extends SearchComic {
  SearchComicModel({
    required String title,
    required String coverPhoto,
    required String review,
    required bool editorChoice,
    required bool published,
    required bool completed,
    required Timestamp created,
  }) : super(title, coverPhoto, review, editorChoice, published, completed,
            created);

  static SearchComicModel fromJson(Map<String, dynamic> json) {
    return SearchComicModel(
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
