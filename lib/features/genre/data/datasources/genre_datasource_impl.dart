import 'package:cloud_firestore/cloud_firestore.dart';
import '../../../../core/error/exceptions.dart';
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
          await firebaseFirestore.collection("genres").orderBy("name").get();

      List<Genre> _genres = [];

      for (QueryDocumentSnapshot _genre in _querySnapshot.docs) {
        _genres.add(GenreModel(
            id: _genre.id, name: _genre.get('name'), icon: _genre.get('icon')));
      }

      return _genres;
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<List<Comic>> getComics(String genreId) async {
    try {
      List<ComicGenre> _comicGenres = await getComicId(genreId);

      List<Comic> _comics = [];
      for (var _comicGenre in _comicGenres) {
        QuerySnapshot _episodeSnapshot = await firebaseFirestore
            .collection("episodes")
            .orderBy("episode_name")
            .where("comic_id", isEqualTo: _comicGenre.comicId)
            .get();

        final _querySnapshot = await firebaseFirestore
            .collection("comics")
            .doc(_comicGenre.comicId)
            .get();

        final _comic = _querySnapshot.data() as Map<String, dynamic>;

        _comics.add(ComicModel(
            id: _comicGenre.comicId,
            title: _comic["title"],
            review: _comic["review"],
            coverPhoto: _comic["cover_photo"],
            editorChoice: _comic["editor_choice"],
            completed: _comic["completed"],
            published: _comic["published"],
            created: _comic["created"],
            episodeCount: _episodeSnapshot.size));
      }

      return _comics;
    } catch (e) {
      throw ServerException();
    }
  }

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
  Future<List<Genre>> getGenre(String comicId) async {
    try {
      List<Genre> _genres = [];
      List<ComicGenre> _comicGenres = await getGenreId(comicId);

      for (var _comicGenre in _comicGenres) {
        final _querySnapshot = await firebaseFirestore
            .collection("genres")
            .doc(_comicGenre.genreId)
            .get();

        final _genre = _querySnapshot.data() as Map<String, dynamic>;

        _genres.add(GenreModel(
            id: _comicGenre.genreId,
            name: _genre["name"],
            icon: _genre['icon']));
      }

      return _genres;
    } catch (e) {
      throw ServerException();
    }
  }
}
