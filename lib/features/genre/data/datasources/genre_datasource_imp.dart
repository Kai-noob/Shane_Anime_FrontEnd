import 'package:cloud_firestore/cloud_firestore.dart';
import 'genre_datasource.dart';
import '../models/comic_by_genre_model.dart';
import '../models/comic_genre_model.dart';
import '../models/genre_model.dart';
import '../../domain/entities/comic_by_genre.dart';
import '../../domain/entities/comic_gere.dart';
import '../../domain/entities/genre.dart';

class GenreDataSourceImpl implements GenreDataSource {
  final FirebaseFirestore firebaseFirestore;

  GenreDataSourceImpl({required this.firebaseFirestore});
  @override
  Future<List<ComicGenre>> getComicGenreFromFirebase(String genreId) async {
    QuerySnapshot _querySnapshot = await firebaseFirestore
        .collection("comic_genre")
        .where("genre_id", isEqualTo: genreId)
        .get();

    List<ComicGenre> _comicGenres = [];

    for (QueryDocumentSnapshot _comicGenre in _querySnapshot.docs) {
      _comicGenres.add(ComicGenreModel(
        comicId: _comicGenre.get("comic_id"),
        genreId: _comicGenre.get("genre_id"),
      ));
    }
    return _comicGenres;
  }

  @override
  Future<List<Genre>> getGenreFromFirebase() async {
    QuerySnapshot _querySnapshot =
        await firebaseFirestore.collection("genres").get();

    List<Genre> _genres = [];

    for (QueryDocumentSnapshot _genre in _querySnapshot.docs) {
      _genres.add(GenreModel(id: _genre.id, name: _genre.get('name')));
    }

    return _genres;
  }

  @override
  Future<ComicByGenre> getComicByGenreFromFirebase(String comicId) async {
    final _querySnapshot =
        await firebaseFirestore.collection("comics").doc(comicId).get();

    final _comic = _querySnapshot.data() as Map<String, dynamic>;

    return ComicByGenreModel(
        title: _comic["title"],
        review: _comic["review"],
        coverPhoto: _comic["cover_photo"],
        editorChoice: _comic["editor_choice"],
        completed: _comic["completed"],
        published: _comic["published"],
        created: _comic["created"]);
  }
}
