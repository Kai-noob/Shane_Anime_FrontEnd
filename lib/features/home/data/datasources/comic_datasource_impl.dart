import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/episode_model.dart';
import '../models/photo_model.dart';
import '../../domain/entities/episodes.dart';
import '../../domain/entities/photos.dart';
import 'comic_datasource.dart';
import '../models/comic_model.dart';
import '../../domain/entities/comic.dart';

class ComicRemoteDataSourceImpl implements ComicRemoteDataSource {
  final FirebaseFirestore firebaseFirestore;

  ComicRemoteDataSourceImpl({required this.firebaseFirestore});
  @override
  Future<List<Comic>> getRecentComic() async {
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
  }

  @override
  Future<List<Comic>> getCompleteComic() async {
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
          created: _completeComic.get("created")));
    }
    return _completeComicList;
  }

  @override
  Future<List<Comic>> getHotComic() async {
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
  }

  @override
  Future<List<Episodes>> getEpisodes(String comicId) async {
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
  }

  @override
  Future<List<Photos>> getPhotos(String comicId, String episodeName) async {
    QuerySnapshot _querySnapshot = await firebaseFirestore
        .collection("episodes")
        .where('comic_id', isEqualTo: comicId)
        .where('episode_name', isEqualTo: episodeName)
        .get();

    List<Photos> _photoList = [];

    for (QueryDocumentSnapshot _photo in _querySnapshot.docs) {
      List<String> images = List.from(_photo.get("photo_array"));
      _photoList.add(PhotoModel(
          comicId: _photo.get("comic_id"),
          episodeName: _photo.get("episode_name"),
          photos: images));
    }

    return _photoList;
  }
}
