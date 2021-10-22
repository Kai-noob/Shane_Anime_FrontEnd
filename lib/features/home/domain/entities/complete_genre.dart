import 'package:cloud_firestore/cloud_firestore.dart';
import '../../../genre/domain/entities/genre.dart';

class CompleteGenre {
  final String id;
  final String title;
  final String coverPhoto;
  final String review;
  final bool editorChoice;
  final bool published;
  final bool completed;
  final Timestamp created;
  final List<Genre> genres;

  CompleteGenre(
      this.id,
      this.title,
      this.coverPhoto,
      this.review,
      this.editorChoice,
      this.published,
      this.completed,
      this.created,
      this.genres);
}
