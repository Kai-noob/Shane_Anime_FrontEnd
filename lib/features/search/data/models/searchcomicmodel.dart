import '../../domain/entities/searchcomic.dart';

class SearchComicModel extends SearchComic {
  SearchComicModel(
      {required String title,
      required String coverPhoto,
      required String review,
      required bool editorChoice,
      required bool isFavourite,
      required bool isCompleted})
      : super(
            title, coverPhoto, review, editorChoice, isFavourite, isCompleted);

  static SearchComicModel fromJson(Map<String, dynamic> json) {
    return SearchComicModel(
        title: json['title'],
        coverPhoto: json['coverPhoto'],
        review: json['review'],
        editorChoice: json['editorChoice'],
        isFavourite: json['isFavourite'],
        isCompleted: json['isComplted']);
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
