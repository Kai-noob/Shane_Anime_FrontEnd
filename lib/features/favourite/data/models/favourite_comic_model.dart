import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:movie_app/features/favourite/domain/entities/favourite_comic.dart';

class FavouriteComicModel extends FavouriteComic {
  FavouriteComicModel(
      {required String title,
      required String coverPhoto,
      required String description,
      required bool editorChoice})
      : super(title, coverPhoto, description, editorChoice);

  factory FavouriteComicModel.fromJson(Map<String, dynamic> json) {
    return FavouriteComicModel(
      title: json['title'],
      coverPhoto: json['coverPhoto'],
      description: json['description'],
      editorChoice: json['editorChoice'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "title": title,
      "coverPhoto": coverPhoto,
      "description": description,
      "editorChoice": editorChoice
    };
  }
}
