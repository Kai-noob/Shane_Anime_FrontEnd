import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:movie_app/core/error/exceptions.dart';
import '../../../home/data/models/comic_model.dart';
import '../../../home/domain/entities/comic.dart';
import 'genre_datasource.dart';
import '../models/comic_genre_model.dart';
import '../models/genre_model.dart';
import '../../domain/entities/comic_gere.dart';
import '../../domain/entities/genre.dart';

class GenreDataSourceImpl implements GenreDataSource {
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  GenreDataSourceImpl();
  @override
  Future<List<ComicGenre>> getComicId(String genreId) async {
    try {
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
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<List<Genre>> getGenres() async {
    try {
      QuerySnapshot _querySnapshot =
          await firebaseFirestore.collection("genres").get();

      List<Genre> _genres = [];

      for (QueryDocumentSnapshot _genre in _querySnapshot.docs) {
        _genres.add(GenreModel(id: _genre.id, name: _genre.get('name')));
      }

      return _genres;
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<Comic> getComics(String comicId) async {
    try {
      final _querySnapshot =
          await firebaseFirestore.collection("comics").doc(comicId).get();

      final _comic = _querySnapshot.data() as Map<String, dynamic>;

      return ComicModel(
          id: comicId,
          title: _comic["title"],
          review: _comic["review"],
          coverPhoto: _comic["cover_photo"],
          editorChoice: _comic["editor_choice"],
          completed: _comic["completed"],
          published: _comic["published"],
          created: _comic["created"]);
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<List<ComicGenre>> getGenreId(String comicId) async {
    try {
      final QuerySnapshot _comicGenreSnapshot = await firebaseFirestore
          .collection("comic_genre")
          .where("comic_id", isEqualTo: comicId)
          .get();

      List<ComicGenre> _comicGenres = [];

      for (QueryDocumentSnapshot _comicGenre in _comicGenreSnapshot.docs) {
        _comicGenres.add(
          ComicGenreModel(
            comicId: _comicGenre.get("comic_id"),
            genreId: _comicGenre.get("genre_id"),
          ),
        );
      }
      return _comicGenres;
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<Genre> getGenre(String genreId) async {
    try {
      final _querySnapshot =
          await firebaseFirestore.collection("genres").doc(genreId).get();

      final _genre = _querySnapshot.data() as Map<String, dynamic>;

      return GenreModel(id: genreId, name: _genre["name"]);
    } catch (e) {
      throw ServerException();
    }
  }
}
