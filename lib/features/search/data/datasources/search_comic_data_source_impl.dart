import 'package:cloud_firestore/cloud_firestore.dart';
import '../../../../core/error/exceptions.dart';
import '../../../genre/data/models/comic_genre_model.dart';
import '../../../genre/data/models/genre_model.dart';
import '../../../genre/domain/entities/comic_gere.dart';
import '../../../genre/domain/entities/genre.dart';
import '../../../home/data/models/comic_model.dart';
import '../../../home/domain/entities/comic.dart';
import 'search_comic_data_source.dart';

class SearchComicDataSourceImpl implements SearchComicDataSource {
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  SearchComicDataSourceImpl();
  @override
  Future<List<Comic>> searchComics({required String query}) async {
    try {
      QuerySnapshot _querySnapshot = await firebaseFirestore
          .collection("comics")
          .where("title", isGreaterThanOrEqualTo: query)
          .where("published", isEqualTo: true)
          .get();

      List<Comic> _searchcomicList = [];

      for (QueryDocumentSnapshot _searchComic in _querySnapshot.docs) {
        QuerySnapshot _episodeSnapshot = await firebaseFirestore
            .collection("episodes")
            .orderBy("episode_name")
            .where("comic_id", isEqualTo: _searchComic.id)
            .get();
        List<Genre> _genres = await getGenre(_searchComic.id);
        _searchcomicList.add(ComicModel(
            id: _searchComic.id,
            title: _searchComic.get("title"),
            coverPhoto: _searchComic.get("cover_photo"),
            review: _searchComic.get("review"),
            editorChoice: _searchComic.get("editor_choice"),
            published: _searchComic.get("published"),
            completed: _searchComic.get("completed"),
            created: _searchComic.get("created"),
            episodeCount: _episodeSnapshot.size,
            genres: _genres));
      }
      return _searchcomicList;
    } catch (e) {
      throw ServerException();
    }
  }

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
}
