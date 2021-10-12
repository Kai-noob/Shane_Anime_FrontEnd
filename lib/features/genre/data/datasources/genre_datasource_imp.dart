import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:movie_app/features/genre/data/datasources/genre_datasource.dart';
import 'package:movie_app/features/genre/data/models/comic_by_genre_model.dart';
import 'package:movie_app/features/genre/data/models/comic_genre_model.dart';
import 'package:movie_app/features/genre/data/models/genre_model.dart';
import 'package:movie_app/features/genre/domain/entities/comic_by_genre.dart';
import 'package:movie_app/features/genre/domain/entities/comic_gere.dart';
import 'package:movie_app/features/genre/domain/entities/genre.dart';

class GenreDataSourceImpl implements GenreDataSource {
  final FirebaseFirestore firebaseFirestore;

  GenreDataSourceImpl({required this.firebaseFirestore});
  @override
  Future<List<ComicGenre>> getComicGenreFromFirebase(String genreId) async {
    QuerySnapshot querySnapshot = await firebaseFirestore
        .collection("comic_genre")
        .where("genre_id", isEqualTo: genreId)
        .get();

    List<ComicGenre> comicGenres = [];

    for (QueryDocumentSnapshot comicGenre in querySnapshot.docs) {
      comicGenres.add(ComicGenreModel(
        comicId: comicGenre.get("comic_id"),
        genreId: comicGenre.get("genre_id"),
      ));
    }
    return comicGenres;
  }

  @override
  Future<List<Genre>> getGenreFromFirebase() async {
    QuerySnapshot querySnapshot =
        await firebaseFirestore.collection("genres").get();

    List<Genre> genres = [];

    for (QueryDocumentSnapshot genre in querySnapshot.docs) {
      genres.add(GenreModel(id: genre.id, name: genre.get('name')));
    }

    return genres;
  }

  @override
  Future<ComicByGenre> getComicByGenreFromFirebase(String doc) async {
    final comic = await firebaseFirestore.collection("comics").doc(doc).get();

    print("ComicID  => $doc");

    final currentComic = comic.data() as Map<String, dynamic>;
    print("Currentcomic length  ${currentComic}");

    return ComicByGenreModel(
        title: currentComic["title"],
        review: currentComic["review"],
        coverPhoto: currentComic["cover_photo"],
        editorChoice: currentComic["editor_choice"],
        completed: currentComic["completed"],
        published: currentComic["published"],
        created: currentComic["created"]);
  }
}
