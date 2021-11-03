import 'package:cloud_firestore/cloud_firestore.dart';
import '../../../genre/data/models/comic_genre_model.dart';
import '../../../genre/data/models/genre_model.dart';
import '../../../genre/domain/entities/comic_gere.dart';
import '../../../genre/domain/entities/genre.dart';

import '../../domain/entities/episodes.dart';
import '../../../../core/error/exceptions.dart';
import '../models/recent_episode_model.dart';

import 'comic_datasource.dart';
import '../models/comic_model.dart';
import '../../domain/entities/comic.dart';

class ComicRemoteDataSourceImpl implements ComicRemoteDataSource {
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  ComicRemoteDataSourceImpl();

  @override
  Future<List<Comic>> getCompleteAllComic() async {
    try {
      QuerySnapshot _querySnapshot = await firebaseFirestore
          .collection("comics")
          .where("completed", isEqualTo: true)
          .where("published", isEqualTo: true)
          .get();

      List<Comic> _completeAllComicList = [];

      for (QueryDocumentSnapshot _completeAllComic in _querySnapshot.docs) {
        QuerySnapshot _episodeSnapshot = await firebaseFirestore
            .collection("episodes")
            .orderBy("episode_number")
            .where("comic_id", isEqualTo: _completeAllComic.id)
            .get();

        List<Genre> _genres = await getGenre(_completeAllComic.id);
        List<Episode> _episodes = await getEpisodes(_completeAllComic.id);
        _completeAllComicList.add(ComicModel(
            id: _completeAllComic.id,
            title: _completeAllComic.get("title"),
            coverPhoto: _completeAllComic.get("cover_photo"),
            review: _completeAllComic.get("review"),
            editorChoice: _completeAllComic.get("editor_choice"),
            published: _completeAllComic.get("published"),
            completed: _completeAllComic.get("completed"),
            created: _completeAllComic.get("created"),
            episodeCount: _episodeSnapshot.size,
            genres: _genres,
            episodes: _episodes));
      }
      return _completeAllComicList;
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<List<Comic>> getHotAllComic() async {
    try {
      QuerySnapshot _querySnapshot = await firebaseFirestore
          .collection("comics")
          .where("editor_choice", isEqualTo: true)
          .where("published", isEqualTo: true)
          .get();

      List<Comic> _hotAllComicList = [];

      for (QueryDocumentSnapshot _hotAllComic in _querySnapshot.docs) {
        QuerySnapshot _episodeSnapshot = await firebaseFirestore
            .collection("episodes")
            .orderBy("episode_number")
            .where("comic_id", isEqualTo: _hotAllComic.id)
            .get();
        List<Genre> _genres = await getGenre(_hotAllComic.id);
        List<Episode> _episodes = await getEpisodes(_hotAllComic.id);
        _hotAllComicList.add(ComicModel(
            id: _hotAllComic.id,
            title: _hotAllComic.get("title"),
            coverPhoto: _hotAllComic.get("cover_photo"),
            review: _hotAllComic.get("review"),
            editorChoice: _hotAllComic.get("editor_choice"),
            published: _hotAllComic.get("published"),
            completed: _hotAllComic.get("completed"),
            created: _hotAllComic.get("created"),
            episodeCount: _episodeSnapshot.size,
            genres: _genres,
            episodes: _episodes));
      }
      return _hotAllComicList;
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<List<Episode>> getEpisodes(String comicId) async {
    try {
      QuerySnapshot _querySnapshot = await firebaseFirestore
          .collection("episodes")
          .orderBy("episode_number")
          .where("comic_id", isEqualTo: comicId)
          .get();

      List<Episode> _episodeList = [];

      for (QueryDocumentSnapshot _episode in _querySnapshot.docs) {
        final _comicSnapshot = await firebaseFirestore
            .collection("comics")
            .doc(_episode.get("comic_id"))
            .get();

        final _comic = _comicSnapshot.data() as Map<String, dynamic>;
        _episodeList.add(
          EpisodeModel(
              comicId: _episode.get("comic_id"),
              episodeName: _episode.get("episode_name"),
              title: _comic["title"],
              coverPhoto: _comic['cover_photo'],
              episodeNumber: _episode.get('episode_number')),
        );
      }
      return _episodeList;
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<List<String>> getImages(
      String comicId, String episodeName, int episodeNumber) async {
    try {
      QuerySnapshot _querySnapshot = await firebaseFirestore
          .collection("episodes")
          .where('comic_id', isEqualTo: comicId)
          .where('episode_name', isEqualTo: episodeName)
          .where("episode_number", isEqualTo: episodeNumber)
          .get();

      List<String> _photoList = [];

      for (QueryDocumentSnapshot _episode in _querySnapshot.docs) {
        List<String> images = List.from(_episode.get("photo_array"));
        for (var _photo in images) {
          _photoList.add(_photo);
        }
      }

      return _photoList;
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<String> getPdf(
      String comicId, String episodeName, int episodeNumber) async {
    QuerySnapshot _querySnapshot = await firebaseFirestore
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

    return pdfFile;
  }

  @override
  Future<bool> checkPdfOrImage(
      String comicId, String episodeName, int episodeNumber) async {
    QuerySnapshot _querySnapshot = await firebaseFirestore
        .collection("episodes")
        .where('comic_id', isEqualTo: comicId)
        .where('episode_name', isEqualTo: episodeName)
        .where("episode_number", isEqualTo: episodeNumber)
        .get();

    for (QueryDocumentSnapshot _episode in _querySnapshot.docs) {
      if (_episode.get("photo_array") == null) {
        return true;
      }
    }
    return false;
  }

  @override
  Future<List<Episode>> getFilteredEpisodes(String datetime) async {
    try {
      QuerySnapshot _querySnapshot = await firebaseFirestore
          .collection("episodes")
          .where("created", isEqualTo: datetime)
          .get();

      List<Episode> _filteredEpisodeList = [];

      for (QueryDocumentSnapshot _filteredEpisode in _querySnapshot.docs) {
        final _comicSnapshot = await firebaseFirestore
            .collection("comics")
            .doc(_filteredEpisode.get("comic_id"))
            .get();

        final _comic = _comicSnapshot.data() as Map<String, dynamic>;
        _filteredEpisodeList.add(
          EpisodeModel(
              comicId: _filteredEpisode.get("comic_id"),
              episodeName: _filteredEpisode.get("episode_name"),
              coverPhoto: _comic["cover_photo"],
              title: _comic['title'],
              episodeNumber: _filteredEpisode.get("episode_number")),
        );
      }

      return _filteredEpisodeList;
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<List<Comic>> getCompleteLimitComic() async {
    try {
      QuerySnapshot _querySnapshot = await firebaseFirestore
          .collection("comics")
          .limit(5)
          .where("completed", isEqualTo: true)
          .where("published", isEqualTo: true)
          .get();

      List<Comic> _completeLimitComicList = [];

      for (QueryDocumentSnapshot _completeLimitComic in _querySnapshot.docs) {
        QuerySnapshot _episodeSnapshot = await firebaseFirestore
            .collection("episodes")
            .orderBy("episode_number")
            .where("comic_id", isEqualTo: _completeLimitComic.id)
            .get();
        List<Genre> _genres = await getGenre(_completeLimitComic.id);
        List<Episode> _episodes = await getEpisodes(_completeLimitComic.id);

        _completeLimitComicList.add(ComicModel(
            id: _completeLimitComic.id,
            title: _completeLimitComic.get("title"),
            coverPhoto: _completeLimitComic.get("cover_photo"),
            review: _completeLimitComic.get("review"),
            editorChoice: _completeLimitComic.get("editor_choice"),
            published: _completeLimitComic.get("published"),
            completed: _completeLimitComic.get("completed"),
            created: _completeLimitComic.get("created"),
            episodeCount: _episodeSnapshot.size,
            genres: _genres,
            episodes: _episodes));
      }
      return _completeLimitComicList;
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<List<Comic>> getHotLimitComic() async {
    try {
      QuerySnapshot _querySnapshot = await firebaseFirestore
          .collection("comics")
          .limit(5)
          .where("editor_choice", isEqualTo: true)
          .where("published", isEqualTo: true)
          .get();

      List<Comic> _hotLimitComicList = [];

      for (QueryDocumentSnapshot _hotLimitComic in _querySnapshot.docs) {
        QuerySnapshot _episodeSnapshot = await firebaseFirestore
            .collection("episodes")
            .orderBy("episode_number")
            .where("comic_id", isEqualTo: _hotLimitComic.id)
            .get();
        List<Genre> _genres = await getGenre(_hotLimitComic.id);
        List<Episode> _episodes = await getEpisodes(_hotLimitComic.id);

        _hotLimitComicList.add(ComicModel(
            id: _hotLimitComic.id,
            title: _hotLimitComic.get("title"),
            coverPhoto: _hotLimitComic.get("cover_photo"),
            review: _hotLimitComic.get("review"),
            editorChoice: _hotLimitComic.get("editor_choice"),
            published: _hotLimitComic.get("published"),
            completed: _hotLimitComic.get("completed"),
            created: _hotLimitComic.get("created"),
            episodeCount: _episodeSnapshot.size,
            genres: _genres,
            episodes: _episodes));
      }
      return _hotLimitComicList;
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<List<Episode>> getRecentLimitEpisode() async {
    try {
      QuerySnapshot _querySnapshot = await firebaseFirestore
          .collection("episodes")
          .limit(8)
          .orderBy("created", descending: true)
          .get();

      List<Episode> _recentLimitEpisodesList = [];

      for (QueryDocumentSnapshot _recentLimitEpisode in _querySnapshot.docs) {
        final _comicSnapshot = await firebaseFirestore
            .collection("comics")
            .doc(_recentLimitEpisode.get("comic_id"))
            .get();

        final _comic = _comicSnapshot.data() as Map<String, dynamic>;
        _recentLimitEpisodesList.add(EpisodeModel(
            comicId: _recentLimitEpisode.get("comic_id"),
            episodeName: _recentLimitEpisode.get("episode_name"),
            coverPhoto: _comic["cover_photo"],
            title: _comic['title'],
            episodeNumber: _recentLimitEpisode.get("episode_number")));
      }
      return _recentLimitEpisodesList;
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

  @override
  Future<List<Comic>> getAllComic() async {
    try {
      QuerySnapshot _querySnapshot = await firebaseFirestore
          .collection("comics")
          .where("published", isEqualTo: true)
          .get();

      List<Comic> _allComicList = [];

      for (QueryDocumentSnapshot _allComic in _querySnapshot.docs) {
        QuerySnapshot _episodeSnapshot = await firebaseFirestore
            .collection("episodes")
            .orderBy("episode_number")
            .where("comic_id", isEqualTo: _allComic.id)
            .get();
        List<Genre> _genres = await getGenre(_allComic.id);
        List<Episode> _episodes = await getEpisodes(_allComic.id);
        _allComicList.add(ComicModel(
            id: _allComic.id,
            title: _allComic.get("title"),
            coverPhoto: _allComic.get("cover_photo"),
            review: _allComic.get("review"),
            editorChoice: _allComic.get("editor_choice"),
            published: _allComic.get("published"),
            completed: _allComic.get("completed"),
            created: _allComic.get("created"),
            episodeCount: _episodeSnapshot.size,
            genres: _genres,
            episodes: _episodes));
      }
      return _allComicList;
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<List<Comic>> getAllLimitComic() async {
    try {
      QuerySnapshot _querySnapshot = await firebaseFirestore
          .collection("comics")
          .limit(8)
          .where("published", isEqualTo: true)
          .get();

      List<Comic> _allLimitComicList = [];

      for (QueryDocumentSnapshot _allLimitComic in _querySnapshot.docs) {
        List<Episode> episodes = await getEpisodes(_allLimitComic.id);
        QuerySnapshot _episodeSnapshot = await firebaseFirestore
            .collection("episodes")
            .orderBy("episode_number")
            .where("comic_id", isEqualTo: _allLimitComic.id)
            .get();
        List<Genre> _genres = await getGenre(_allLimitComic.id);
        _allLimitComicList.add(ComicModel(
            id: _allLimitComic.id,
            title: _allLimitComic.get("title"),
            coverPhoto: _allLimitComic.get("cover_photo"),
            review: _allLimitComic.get("review"),
            editorChoice: _allLimitComic.get("editor_choice"),
            published: _allLimitComic.get("published"),
            completed: _allLimitComic.get("completed"),
            created: _allLimitComic.get("created"),
            episodeCount: _episodeSnapshot.size,
            genres: _genres,
            episodes: episodes));
      }
      return _allLimitComicList;
    } catch (e) {
      throw ServerException();
    }
  }
}
