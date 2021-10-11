import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:movie_app/features/genre/domain/entities/comic_by_genre.dart';

class ComicByGenreModel extends ComicByGenre {
  ComicByGenreModel({
    required String title,
    required String coverPhoto,
    required String review,
    required bool editorChoice,
    required bool completed,
    required bool published,
    required Timestamp created,
  }) : super(title, coverPhoto, review, editorChoice, completed, published,
            created);

  static ComicByGenreModel fromJson(Map<String, dynamic> json) {
    return ComicByGenreModel(
      title: json['title'],
      coverPhoto: json['cover_photo'],
      review: json['review'],
      editorChoice: json['editor_choice'],
      published: json['published'],
      completed: json['completed'],
      created: json['created'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "title": title,
      "cover_photo": coverPhoto,
      "review": review,
      "editor_choice": editorChoice,
      "published": published,
      "completed": completed,
      "created": created
    };
  }
}
