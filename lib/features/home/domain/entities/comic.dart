import 'package:cloud_firestore/cloud_firestore.dart';

class Comic {
  String id;
  String title;
  String coverPhoto;
  String review;
  bool editorChoice;
  bool published;
  bool completed;
  Timestamp created;

  Comic(this.id, this.title, this.coverPhoto, this.review, this.editorChoice,
      this.published, this.completed, this.created);
}
