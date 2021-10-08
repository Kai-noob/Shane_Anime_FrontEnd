import '../../domain/entities/comic.dart';

class ComicModel extends Comic {
  ComicModel(
      {required String title,
      required String coverPhoto,
      required String review,
      required bool editorChoice,
      required bool isFavourite,
      required bool isCompleted})
      : super(
            title, coverPhoto, review, editorChoice, isFavourite, isCompleted);

  static ComicModel fromJson(Map<String, dynamic> json) {
    return ComicModel(
      title: json['title'],
      coverPhoto: json['coverPhoto'],
      review: json['review'],
      editorChoice: json['editorChoice'],
      isFavourite: json['isFavourite'],
      isCompleted: json['isCompleted'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "title": title,
      "coverPhoto": coverPhoto,
      "review": review,
      "editorChoice": editorChoice,
      "isFavourite": isFavourite,
      "isCompleted": isCompleted
    };
  }
}
