import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:movie_app/features/genre/domain/entities/genre.dart';

class Comic extends Equatable {
  final String id;
  final String title;
  final String coverPhoto;
  final String review;
  final bool editorChoice;
  final bool published;
  final bool completed;
  final Timestamp created;
  final int episodeCount;

  Comic(this.id, this.title, this.coverPhoto, this.review, this.editorChoice,
      this.published, this.completed, this.created, this.episodeCount);

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        title,
        coverPhoto,
        review,
        editorChoice,
        published,
        completed,
        created,
        episodeCount
      ];
}
