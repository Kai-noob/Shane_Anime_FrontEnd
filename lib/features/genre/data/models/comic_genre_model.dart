import '../../domain/entities/comic_gere.dart';

class ComicGenreModel extends ComicGenre {
  const ComicGenreModel({required String comicId, required String genreId})
      : super(comicId, genreId);

  static ComicGenreModel fromJson(Map<String, dynamic> json) {
    return ComicGenreModel(
      comicId: json['comic_id'],
      genreId: json['genre_id'],
    );
  }

  Map<String, dynamic> toJson() {
    return {"comic_id": comicId, "genre_id": genreId};
  }
}
