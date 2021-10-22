import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:movie_app/features/library/domain/entities/favourite_comic.dart';

class FavouriteComicModel extends FavouriteComic {
  FavouriteComicModel({
    String? id,
    required String title,
    required String coverPhoto,
  }) : super(id!, title, coverPhoto);

  static FavouriteComicModel fromJson(Map<String, dynamic> json) {
    return FavouriteComicModel(
      title: json['title'],
      coverPhoto: json['cover_photo'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "title": title,
      "coverPhoto": coverPhoto,
    };
  }
}
