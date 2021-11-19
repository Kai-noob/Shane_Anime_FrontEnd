import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/domain/comic/comic_failure.dart';
import 'package:movie_app/domain/comic/comic.dart';
import 'package:dartz/dartz.dart';
import 'package:movie_app/domain/comic/i_comic_repository.dart';
import 'package:movie_app/domain/episodes/episodes.dart';
import 'package:movie_app/domain/genre/comic_genre.dart';
import 'package:movie_app/domain/genre/genre.dart';

@LazySingleton(as: IComicRepository)
class ComicRepositoryImpl implements IComicRepository {
  final FirebaseFirestore _firestore;

  ComicRepositoryImpl(this._firestore);

  @override
  Future<Either<ComicFailure, List<Comic>>> getCompleteComics() async {
    try {
      final QuerySnapshot _querySnapshot = await _firestore
          .collection("comics")
          .where("completed", isEqualTo: true)
          .where("published", isEqualTo: true)
          .get();

      List<Comic> _completeAllComicList = [];

      for (QueryDocumentSnapshot _completeAllComic in _querySnapshot.docs) {
        // QuerySnapshot _episodeSnapshot = await firebaseFirestore
        //     .collection("episodes")
        //     .orderBy("episode_number")
        //     .where("comic_id", isEqualTo: _completeAllComic.id)
        //     .get();

        List<Genre> _genres = await getGenre(_completeAllComic.id);
        List<Episodes> _episodes = await getEpisodes(_completeAllComic.id);
        final completeAllComic =
            Comic.fromJson(_completeAllComic.data() as Map<String, dynamic>)
                .copyWith(
                    id: _completeAllComic.id,
                    genres: _genres,
                    episodes: _episodes);

        _completeAllComicList.add(completeAllComic);
      }
      return right(_completeAllComicList);
    } on FirebaseException catch (e) {
      if (e.code == 'not-found') {
        return left(const ComicFailure.notFound());
      } else {
        return left(const ComicFailure.unexcepted());
      }
    }
  }

  @override
  Future<Either<ComicFailure, List<Comic>>> getHotComics() async {
    try {
      final QuerySnapshot _querySnapshot = await _firestore
          .collection("comics")
          .where("editor_choice", isEqualTo: true)
          .where("published", isEqualTo: true)
          .get();

      List<Comic> _completeAllComicList = [];

      for (QueryDocumentSnapshot _completeAllComic in _querySnapshot.docs) {
        // QuerySnapshot _episodeSnapshot = await firebaseFirestore
        //     .collection("episodes")
        //     .orderBy("episode_number")
        //     .where("comic_id", isEqualTo: _completeAllComic.id)
        //     .get();

        List<Genre> _genres = await getGenre(_completeAllComic.id);
        List<Episodes> _episodes = await getEpisodes(_completeAllComic.id);
        final completeAllComic =
            Comic.fromJson(_completeAllComic.data() as Map<String, dynamic>)
                .copyWith(
                    id: _completeAllComic.id,
                    genres: _genres,
                    episodes: _episodes);

        _completeAllComicList.add(completeAllComic);
      }
      return right(_completeAllComicList);
    } on FirebaseException catch (e) {
      if (e.code == 'not-found') {
        return left(const ComicFailure.notFound());
      } else {
        return left(const ComicFailure.unexcepted());
      }
    }
  }

  @override
  Future<Either<ComicFailure, Comic>> getComicDetails(String comicId) async {
    try {
      final comicDoc = await _firestore.collection("comics").doc(comicId).get();
      final List<Genre> genreList = await getGenre(comicId);
      final List<Episodes> episodes = await getEpisodes(comicId);

      final comic = Comic.fromJson(comicDoc.data()!)
          .copyWith(id: comicId, genres: genreList, episodes: episodes);
      return right(comic);
    } on FirebaseException catch (e) {
      if (e.code == 'not-found') {
        return left(const ComicFailure.notFound());
      } else {
        return left(const ComicFailure.unexcepted());
      }
    }
  }

  @override
  Future<Either<ComicFailure, String>> getPdf(
      String comicId, String episodeName, int episodeNumber) async {
    try {
      QuerySnapshot _querySnapshot = await _firestore
          .collection("episodes")
          .where('comic_id', isEqualTo: comicId)
          .where('episode_name', isEqualTo: episodeName)
          .where("episode_number", isEqualTo: episodeNumber)
          .get();

      String pdfFile = "";
      for (QueryDocumentSnapshot _episode in _querySnapshot.docs) {
        String pdf = _episode.get("pdf_file");
        pdfFile = pdf;
      }

      return right(pdfFile);
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
          .copyWith(title: _comic["title"], coverPhoto: _comic['cover_photo']);

      _episodeList.add(episode);
    }
    return _episodeList;
  }

  Future<List<Genre>> getGenre(String comicId) async {
    List<Genre> _genres = [];
    List<ComicGenre> _comicGenres = await getGenreId(comicId);

    for (var _comicGenre in _comicGenres) {
      final _querySnapshot = await FirebaseFirestore.instance
          .collection("genres")
          .doc(_comicGenre.genreId)
          .get();
      final _genre =
          Genre.fromJson(_querySnapshot.data() as Map<String, dynamic>);
      _genres.add(_genre);
    }

    return _genres;
  }

  Future<List<ComicGenre>> getGenreId(String comicId) async {
    final QuerySnapshot _comicGenreSnapshot = await FirebaseFirestore.instance
        .collection("comic_genre")
        .where("comic_id", isEqualTo: comicId)
        .get();

    List<ComicGenre> _comicGenres = [];

    for (QueryDocumentSnapshot _comicGenre in _comicGenreSnapshot.docs) {
      _comicGenres
          .add(ComicGenre.fromJson(_comicGenre.data() as Map<String, dynamic>));
    }
    return _comicGenres;
  }
}
