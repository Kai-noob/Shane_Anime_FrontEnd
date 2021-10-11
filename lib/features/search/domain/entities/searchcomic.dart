import 'package:cloud_firestore/cloud_firestore.dart';

class SearchComic {
  final String title;
  final String coverPhoto;
  final String review;
  final bool editorChoice;
  final bool published;
  final bool completed;
  final Timestamp created;

  SearchComic(this.title, this.coverPhoto, this.review, this.editorChoice,
      this.published, this.completed, this.created);
}
