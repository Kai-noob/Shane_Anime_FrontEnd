import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import '../../domain/comic/comic.dart';
import '../../domain/episodes/episodes.dart';
import '../../domain/genre/comic_genre.dart';
import '../../domain/genre/genre.dart';
import '../../domain/comic/comic_failure.dart';
import 'package:dartz/dartz.dart';
import '../../domain/genre/i_genre_repository.dart';

@LazySingleton(as: IGenreRepository)
class GenreRepositoryImpl implements IGenreRepository {
  final FirebaseFirestore _firestore;

  GenreRepositoryImpl(this._firestore);
  @override
  Future<Either<ComicFailure, List<Genre>>> getGenres() async {
    try {
      final QuerySnapshot _querySnapshot =
          await _firestore.collection("genres").orderBy("name").get();
      List<Genre> _genreList = [];

      for (QueryDocumentSnapshot _genre in _querySnapshot.docs) {
        final genres =
            Genre.fromJson(_genre.data() as Map<String, dynamic>).copyWith(
          id: _genre.id,
        );

        _genreList.add(genres);
      }
      return right(_genreList);
    } on FirebaseException catch (e) {
      if (e.code == 'not-found') {
        return left(const ComicFailure.notFound());
      } else {
        return left(const ComicFailure.unexcepted());
      }
    }
  }

  @override
  Future<Either<ComicFailure, List<Comic>>> getComicsByGenres(
      String genreId) async {
    try {
      List<ComicGenre> _comicGenres = await getComicId(genreId);

      List<Comic> _comicList = [];
      for (var _comicGenre in _comicGenres) {
        final _querySnapshot = await _firestore
            .collection("comics")
            .doc(_comicGenre.comicId)
            .get();

        final _comic =
            Comic.fromJson(_querySnapshot.data() as Map<String, dynamic>)
                .copyWith(
          id: _comicGenre.comicId,
        );
        _comicList.add(_comic);
      }

      return right(_comicList);
    } on FirebaseException catch (e) {
      if (e.code == 'not-found') {
        return left(const ComicFailure.notFound());
      } else {
        return left(const ComicFailure.unexcepted());
      }
    }
  }

  Future<List<Episodes>> getEpisodes(String comicId) async {
    QuerySnapshot _querySnapshot = await _firestore
        .collection("episodes")
        .orderBy("episode_number")
        .where("comic_id", isEqualTo: comicId)
        .get();

    List<Episodes> _episodeList = [];

    for (QueryDocumentSnapshot _episode in _querySnapshot.docs) {
      final _comicSnapshot = await _firestore
          .collection("comics")
          .doc(_episode.get("comic_id"))
          .get();

      final _comic = _comicSnapshot.data() as Map<String, dynamic>;

      final episode = Episodes.fromJson(_episode.data() as Map<String, dynamic>)
          .copyWith(
              id: _episode.id,
              title: _comic["title"],
              coverPhoto: _comic['cover_photo']);

      _episodeList.add(episode);
    }
    return _episodeList;
  }

  Future<List<ComicGenre>> getComicId(String genreId) async {
    QuerySnapshot _querySnapshot = await _firestore
        .collection("comic_genre")
        .where("genre_id", isEqualTo: genreId)
        .get();

    List<ComicGenre> _comicGenreList = [];

    for (QueryDocumentSnapshot _comicGenre in _querySnapshot.docs) {
      final comicGenres =
          ComicGenre.fromJson(_comicGenre.data() as Map<String, dynamic>);

      _comicGenreList.add(comicGenres);
    }
    return _comicGenreList;
  }

  @override
  Future<Either<ComicFailure, List<Genre>>> getComicGenres(
      String comicId) async {
    try {
      List<Genre> _genres = [];

      final QuerySnapshot _comicGenreSnapshot = await FirebaseFirestore.instance
          .collection("comic_genre")
          .where("comic_id", isEqualTo: comicId)
          .get();

      List<ComicGenre> _comicGenres = [];

      for (QueryDocumentSnapshot _comicGenre in _comicGenreSnapshot.docs) {
        _comicGenres.add(
            ComicGenre.fromJson(_comicGenre.data() as Map<String, dynamic>));
      }

      for (var _comicGenre in _comicGenres) {
        final _querySnapshot = await FirebaseFirestore.instance
            .collection("genres")
            .doc(_comicGenre.genreId)
            .get();
        final _genre =
            Genre.fromJson(_querySnapshot.data() as Map<String, dynamic>);
        _genres.add(_genre);
      }

      return right(_genres);
    } on FirebaseException catch (e) {
      if (e.code == 'not-found') {
        return left(const ComicFailure.notFound());
      } else {
        return left(const ComicFailure.unexcepted());
      }
    }
  }
}
