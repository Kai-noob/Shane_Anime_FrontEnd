import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class FavouriteComic extends Equatable {
  final String id;
  final String title;
  final String coverPhoto;

  FavouriteComic(this.id, this.title, this.coverPhoto);

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        title,
        coverPhoto,
      ];
}
