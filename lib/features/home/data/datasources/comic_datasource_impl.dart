import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:movie_app/features/genre/data/models/comic_genre_model.dart';
import 'package:movie_app/features/genre/data/models/genre_model.dart';
import 'package:movie_app/features/genre/domain/entities/comic_gere.dart';
import 'package:movie_app/features/genre/domain/entities/genre.dart';
import '../../../../core/error/exceptions.dart';
import '../models/episode_model.dart';
import '../models/photo_model.dart';
import '../../domain/entities/episodes.dart';
import '../../domain/entities/photos.dart';
import 'comic_datasource.dart';
import '../models/comic_model.dart';
import '../../domain/entities/comic.dart';

class ComicRemoteDataSourceImpl implements ComicRemoteDataSource {
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  ComicRemoteDataSourceImpl();
  @override
  Future<List<Comic>> getRecentComic() async {
    try {
      QuerySnapshot _querySnapshot =
          await firebaseFirestore.collection("comics").orderBy("created").get();

      List<Comic> _recentComicList = [];

      for (QueryDocumentSnapshot _recentComic in _querySnapshot.docs) {
        _recentComicList.add(ComicModel(
            id: _recentComic.id,
            title: _recentComic.get("title"),
            coverPhoto: _recentComic.get("cover_photo"),
            review: _recentComic.get("review"),
            editorChoice: _recentComic.get("editor_choice"),
            published: _recentComic.get("published"),
            completed: _recentComic.get("completed"),
            created: _recentComic.get("created")));
      }
      return _recentComicList;
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<List<Comic>> getCompleteComic() async {
    try {
      QuerySnapshot _querySnapshot = await firebaseFirestore
          .collection("comics")
          .where("completed", isEqualTo: true)
          .get();

      List<Comic> _completeComicList = [];

      for (QueryDocumentSnapshot _completeComic in _querySnapshot.docs) {
        _completeComicList.add(ComicModel(
          id: _completeComic.id,
          title: _completeComic.get("title"),
          coverPhoto: _completeComic.get("cover_photo"),
          review: _completeComic.get("review"),
          editorChoice: _completeComic.get("editor_choice"),
          published: _completeComic.get("published"),
          completed: _completeComic.get("completed"),
          created: _completeComic.get("created"),
        ));
      }
      return _completeComicList;
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<List<Comic>> getHotComic() async {
    try {
      QuerySnapshot _querySnapshot = await firebaseFirestore
          .collection("comics")
          .where("editor_choice", isEqualTo: true)
          .get();

      List<Comic> _hotComicList = [];

      for (QueryDocumentSnapshot _hotComic in _querySnapshot.docs) {
        _hotComicList.add(ComicModel(
            id: _hotComic.id,
            title: _hotComic.get("title"),
            coverPhoto: _hotComic.get("cover_photo"),
            review: _hotComic.get("review"),
            editorChoice: _hotComic.get("editor_choice"),
            published: _hotComic.get("published"),
            completed: _hotComic.get("completed"),
            created: _hotComic.get("created")));
      }
      return _hotComicList;
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<List<Episodes>> getEpisodes(String comicId) async {
    try {
      QuerySnapshot _querySnapshot = await firebaseFirestore
          .collection("episodes")
          .orderBy("episode_name")
          .where("comic_id", isEqualTo: comicId)
          .get();

      List<Episodes> _episodeList = [];

      for (QueryDocumentSnapshot _episode in _querySnapshot.docs) {
        _episodeList.add(
          EpisodeModel(
              comicId: _episode.get("comic_id"),
              episodeName: _episode.get("episode_name"),
              episodes: _episode.get("photo_array")),
        );
      }
      return _episodeList;
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<List<String>> getPhotos(String comicId, String episodeName) async {
    try {
      QuerySnapshot _querySnapshot = await firebaseFirestore
          .collection("episodes")
          .where('comic_id', isEqualTo: comicId)
          .where('episode_name', isEqualTo: episodeName)
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
}
