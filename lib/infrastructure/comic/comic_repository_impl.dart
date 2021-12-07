import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import '../../domain/comic/comic_failure.dart';
import '../../domain/comic/comic.dart';
import 'package:dartz/dartz.dart';
import '../../domain/comic/i_comic_repository.dart';
import '../../domain/episodes/episodes.dart';
import '../../domain/genre/comic_genre.dart';
import '../../domain/genre/genre.dart';

@LazySingleton(as: IComicRepository)
class ComicRepositoryImpl implements IComicRepository {
  final FirebaseFirestore _firestore;

  ComicRepositoryImpl(this._firestore);

  @override
  Future<Either<ComicFailure, List<Comic>>> getMoreCompletedComics() async {
    try {
      final QuerySnapshot _querySnapshot = await _firestore
          .collection("comics")
          .where("completed", isEqualTo: true)
          .where("published", isEqualTo: true)
          .get();

      List<Comic> _completeAllComicList = [];

      for (QueryDocumentSnapshot _completeAllComic in _querySnapshot.docs) {
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
  Future<Either<ComicFailure, List<Comic>>> getMoreHotComics() async {
    try {
      final QuerySnapshot _querySnapshot = await _firestore
          .collection("comics")
          .where("editor_choice", isEqualTo: true)
          .where("published", isEqualTo: true)
          .get();

      List<Comic> _completeAllComicList = [];

      for (QueryDocumentSnapshot _completeAllComic in _querySnapshot.docs) {
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
  Future<Either<ComicFailure, Episodes>> getPdf(
      String comicId, String episodeName, int episodeNumber) async {
    try {
      QuerySnapshot _querySnapshot = await _firestore
          .collection("episodes")
          .where('comic_id', isEqualTo: comicId)
          .where('episode_name', isEqualTo: episodeName)
          .where('episode_number', isEqualTo: episodeNumber)
          .get();

      QuerySnapshot _querySnapshot2 = await _firestore
          .collection("episodes")
          .where('comic_id', isEqualTo: comicId)
          .where('episode_name', isEqualTo: episodeName)
          .get();

      late Episodes pdfFile;
      for (QueryDocumentSnapshot _episode in _querySnapshot.docs) {
        final _comicSnapshot = await _firestore
            .collection("comics")
            .doc(_episode.get("comic_id"))
            .get();

        final _comic = _comicSnapshot.data() as Map<String, dynamic>;

        final episode =
            Episodes.fromJson(_episode.data() as Map<String, dynamic>).copyWith(
                id: _episode.id,
                title: _comic["title"],
                coverPhoto: _comic['cover_photo'],
                episodeCount: _querySnapshot2.size);

        pdfFile = episode;
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
        .orderBy("episode_name")
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
              coverPhoto: _comic['cover_photo'],
              episodeCount: _querySnapshot.size);

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

  @override
  Future<Either<ComicFailure, List<Comic>>> getHomeAllComics() async {
    try {
      final QuerySnapshot _querySnapshot = await _firestore
          .collection("comics")
          .where("published", isEqualTo: true)
          .get();

      List<Comic> _homeAllComicList = [];

      for (QueryDocumentSnapshot _homeAllComics in _querySnapshot.docs) {
        List<Genre> _genres = await getGenre(_homeAllComics.id);
        List<Episodes> _episodes = await getEpisodes(_homeAllComics.id);
        final homeAllComics =
            Comic.fromJson(_homeAllComics.data() as Map<String, dynamic>)
                .copyWith(
                    id: _homeAllComics.id,
                    genres: _genres,
                    episodes: _episodes);

        _homeAllComicList.add(homeAllComics);
      }
      return right(_homeAllComicList);
    } on FirebaseException catch (e) {
      if (e.code == 'not-found') {
        return left(const ComicFailure.notFound());
      } else {
        return left(const ComicFailure.unexcepted());
      }
    }
  }

  @override
  Future<Either<ComicFailure, List<Comic>>> getHomeCompletedComics() async {
    try {
      final QuerySnapshot _querySnapshot = await _firestore
          .collection("comics")
          .where("completed", isEqualTo: true)
          .where("published", isEqualTo: true)
          .limit(8)
          .get();

      List<Comic> _homeCompletedComicList = [];

      for (QueryDocumentSnapshot _homeCompletedComic in _querySnapshot.docs) {
        List<Genre> _genres = await getGenre(_homeCompletedComic.id);
        List<Episodes> _episodes = await getEpisodes(_homeCompletedComic.id);
        final homeCompletedComics =
            Comic.fromJson(_homeCompletedComic.data() as Map<String, dynamic>)
                .copyWith(
                    id: _homeCompletedComic.id,
                    genres: _genres,
                    episodes: _episodes);

        _homeCompletedComicList.add(homeCompletedComics);
      }
      return right(_homeCompletedComicList);
    } on FirebaseException catch (e) {
      if (e.code == 'not-found') {
        return left(const ComicFailure.notFound());
      } else {
        return left(const ComicFailure.unexcepted());
      }
    }
  }

  @override
  Future<Either<ComicFailure, List<Comic>>> getHomeHotComics() async {
    try {
      final QuerySnapshot _querySnapshot = await _firestore
          .collection("comics")
          .where("completed", isEqualTo: true)
          .where("published", isEqualTo: true)
          .limit(8)
          .get();

      List<Comic> _homeHotComicList = [];

      for (QueryDocumentSnapshot _homeHotComic in _querySnapshot.docs) {
        List<Genre> _genres = await getGenre(_homeHotComic.id);
        List<Episodes> _episodes = await getEpisodes(_homeHotComic.id);
        final homeHotComics =
            Comic.fromJson(_homeHotComic.data() as Map<String, dynamic>)
                .copyWith(
                    id: _homeHotComic.id, genres: _genres, episodes: _episodes);

        _homeHotComicList.add(homeHotComics);
      }
      return right(_homeHotComicList);
    } on FirebaseException catch (e) {
      if (e.code == 'not-found') {
        return left(const ComicFailure.notFound());
      } else {
        return left(const ComicFailure.unexcepted());
      }
    }
  }

  @override
  Future<Either<ComicFailure, List<Comic>>> getMoreAllComics() async {
    try {
      final QuerySnapshot _querySnapshot = await _firestore
          .collection("comics")
          .where("published", isEqualTo: true)
          .get();

      List<Comic> _moreAllComicList = [];

      for (QueryDocumentSnapshot _moreAllComic in _querySnapshot.docs) {
        List<Genre> _genres = await getGenre(_moreAllComic.id);
        List<Episodes> _episodes = await getEpisodes(_moreAllComic.id);
        final moreAllComics =
            Comic.fromJson(_moreAllComic.data() as Map<String, dynamic>)
                .copyWith(
                    id: _moreAllComic.id, genres: _genres, episodes: _episodes);

        _moreAllComicList.add(moreAllComics);
      }
      return right(_moreAllComicList);
    } on FirebaseException catch (e) {
      if (e.code == 'not-found') {
        return left(const ComicFailure.notFound());
      } else {
        return left(const ComicFailure.unexcepted());
      }
    }
  }

  @override
  Future<Either<ComicFailure, List<Comic>>> searchComics(String title) async {
    try {
      final QuerySnapshot _querySnapshot = await _firestore
          .collection("comics")
          .where("title", isGreaterThanOrEqualTo: title)
          .where("published", isEqualTo: true)
          .get();

      List<Comic> _searchComicList = [];

      for (QueryDocumentSnapshot _searchComic in _querySnapshot.docs) {
        List<Genre> _genres = await getGenre(_searchComic.id);
        List<Episodes> _episodes = await getEpisodes(_searchComic.id);
        final searchComics =
            Comic.fromJson(_searchComic.data() as Map<String, dynamic>)
                .copyWith(
                    id: _searchComic.id, genres: _genres, episodes: _episodes);

        _searchComicList.add(searchComics);
      }
      return right(_searchComicList);
    } on FirebaseException catch (e) {
      if (e.code == 'NOT_FOUND') {
        return left(const ComicFailure.notFound());
      } else {
        return left(const ComicFailure.unexcepted());
      }
    }
  }

  @override
  Future<Either<ComicFailure, List<Episodes>>> getDailyEpisodes() async {
    try {
      final QuerySnapshot _querySnapshot = await _firestore
          .collection("episodes")
          .limit(8)
          .orderBy("created", descending: true)
          .get();

      List<Episodes> _dailyEpisodesList = [];

      for (QueryDocumentSnapshot _dailyEpisode in _querySnapshot.docs) {
        final _comicSnapshot = await _firestore
            .collection("comics")
            .doc(_dailyEpisode.get("comic_id"))
            .get();

        final _comic = _comicSnapshot.data() as Map<String, dynamic>;

        final episodes =
            Episodes.fromJson(_dailyEpisode.data() as Map<String, dynamic>)
                .copyWith(
          id: _dailyEpisode.id,
          title: _comic["title"],
          coverPhoto: _comic["cover_photo"],
          episodeCount: _querySnapshot.size,
        );

        _dailyEpisodesList.add(episodes);
      }
      return right(_dailyEpisodesList);
    } on FirebaseException catch (e) {
      if (e.code == 'not-found') {
        return left(const ComicFailure.notFound());
      } else {
        return left(const ComicFailure.unexcepted());
      }
    }
  }

  @override
  Future<Either<ComicFailure, Episodes>> getEpisode(String episodeId) async {
    try {
      final _episodeDoc =
          await _firestore.collection("episodes").doc(episodeId).get();

      final _comicSnapshot = await _firestore
          .collection("comics")
          .doc(_episodeDoc.data()!["comic_id"])
          .get();

      final episode =
          Episodes.fromJson(_episodeDoc.data() as Map<String, dynamic>)
              .copyWith(
        id: episodeId,
        title: _comicSnapshot.data()!["title"],
        coverPhoto: _comicSnapshot.data()!["cover_photo"],
      );

      return right(episode);
    } on FirebaseException catch (e) {
      if (e.code == 'not-found') {
        return left(const ComicFailure.notFound());
      } else {
        return left(const ComicFailure.unexcepted());
      }
    }
  }

  @override
  Future<bool> checkPdf(
      String comicId, String episodeName, int episodeNumber) async {
    QuerySnapshot _querySnapshot = await _firestore
        .collection("episodes")
        .where('comic_id', isEqualTo: comicId)
        .where('episode_name', isEqualTo: episodeName)
        .where("episode_number", isEqualTo: episodeNumber)
        .get();

    for (QueryDocumentSnapshot _episode in _querySnapshot.docs) {
      if (_episode.get("drive_link") == null) {
        return true;
      }
    }
    return false;
  }
}
