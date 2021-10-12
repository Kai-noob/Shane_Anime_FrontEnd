import 'package:cloud_firestore/cloud_firestore.dart';

class Comic {
  final String id;
  final String title;
  final String coverPhoto;
  final String review;
  final bool editorChoice;
  final bool published;
  final bool completed;
  final Timestamp created;

  Comic(this.id, this.title, this.coverPhoto, this.review, this.editorChoice,
      this.published, this.completed, this.created);
}
