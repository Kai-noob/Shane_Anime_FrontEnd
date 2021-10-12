import 'package:cloud_firestore/cloud_firestore.dart';

class ComicByGenre {
   String title;
   String coverPhoto;
   String review;
   bool editorChoice;
   bool completed;
   bool published;
   Timestamp created;

  ComicByGenre(this.title, this.coverPhoto, this.review, this.editorChoice,
      this.completed, this.published, this.created);
}
