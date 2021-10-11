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
  Future<List<ComicByGenre>> getComicByGenreFromFirebase(String doc) {
    return firebaseFirestore
        .collection("comics")
        .doc(doc)
        .snapshots()
        .map((snapshot) => ComicByGenreModel(
            title: snapshot.get("title"),
            review: snapshot.get("review"),
            coverPhoto: snapshot.get("cover_photo"),
            editorChoice: snapshot.get("editor_choice"),
            completed: snapshot.get("completed"),
            created: snapshot.get("created"),
            published: snapshot.get("published")))
        .toList();
  }
}
