import 'package:cloud_firestore/cloud_firestore.dart';

class ComicByGenre {
  final String title;
  final String coverPhoto;
  final String review;
  final bool editorChoice;
  final bool completed;
  final bool published;
  final Timestamp created;

  ComicByGenre(this.title, this.coverPhoto, this.review, this.editorChoice,
      this.completed, this.published, this.created);
}
