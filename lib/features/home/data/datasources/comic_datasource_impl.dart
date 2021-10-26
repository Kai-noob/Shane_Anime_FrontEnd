import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

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
  Future<List<Episode>> getRecentEpisodes() async {
    try {
      QuerySnapshot _querySnapshot = await firebaseFirestore
          .collection("episodes")
          .orderBy("created", descending: true)
          .get();

      List<Episode> _recentEpisodesList = [];

      for (QueryDocumentSnapshot _recentComic in _querySnapshot.docs) {
        final _comicSnapshot = await firebaseFirestore
            .collection("comics")
            .doc(_recentComic.get("comic_id"))
            .get();

        final _comic = _comicSnapshot.data() as Map<String, dynamic>;
        _recentEpisodesList.add(EpisodeModel(
            comicId: _recentComic.get("comic_id"),
            episodeName: _recentComic.get("episode_name"),
            coverPhoto: _comic["cover_photo"],
            title: _comic['title']));
      }
      return _recentEpisodesList;
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
        QuerySnapshot _episodeSnapshot = await firebaseFirestore
            .collection("episodes")
            .orderBy("episode_name")
            .where("comic_id", isEqualTo: _completeComic.id)
            .get();

        _completeComicList.add(ComicModel(
          id: _completeComic.id,
          title: _completeComic.get("title"),
          coverPhoto: _completeComic.get("cover_photo"),
          review: _completeComic.get("review"),
          editorChoice: _completeComic.get("editor_choice"),
          published: _completeComic.get("published"),
          completed: _completeComic.get("completed"),
          created: _completeComic.get("created"),
          episodeCount: _episodeSnapshot.size,
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
        QuerySnapshot _episodeSnapshot = await firebaseFirestore
            .collection("episodes")
            .orderBy("episode_name")
            .where("comic_id", isEqualTo: _hotComic.id)
            .get();

        _hotComicList.add(ComicModel(
          id: _hotComic.id,
          title: _hotComic.get("title"),
          coverPhoto: _hotComic.get("cover_photo"),
          review: _hotComic.get("review"),
          editorChoice: _hotComic.get("editor_choice"),
          published: _hotComic.get("published"),
          completed: _hotComic.get("completed"),
          created: _hotComic.get("created"),
          episodeCount: _episodeSnapshot.size,
        ));
      }
      return _hotComicList;
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<List<Episode>> getEpisodes(String comicId) async {
    try {
      QuerySnapshot _querySnapshot = await firebaseFirestore
          .collection("episodes")
          .orderBy("episode_name")
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
              coverPhoto: _comic['cover_photo']),
        );
      }
      return _episodeList;
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<List<String>> getImages(String comicId, String episodeName) async {
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

  @override
  Future<String> getPdf(String comicId, String episodeName) async {
    QuerySnapshot _querySnapshot = await firebaseFirestore
        .collection("episodes")
        .where('comic_id', isEqualTo: comicId)
        .where('episode_name', isEqualTo: episodeName)
        .get();

    String pdfFile = "";
    for (QueryDocumentSnapshot _episode in _querySnapshot.docs) {
      String pdf = _episode.get("pdf_file");
      pdfFile = pdf;
    }

    return pdfFile;
  }

  @override
  Future<bool> checkPdfOrImage(String comicId, String episodeName) async {
    QuerySnapshot _querySnapshot = await firebaseFirestore
        .collection("episodes")
        .where('comic_id', isEqualTo: comicId)
        .where('episode_name', isEqualTo: episodeName)
        .get();

    for (QueryDocumentSnapshot _episode in _querySnapshot.docs) {
      if (_episode.get("photo_array") == null) {
        return true;
      }
    }
    return false;
  }

  @override
  Future<List<Episode>> getFilteredEpisodes(DateTime datetime) async {
    try {
      print(datetime);
      QuerySnapshot _querySnapshot = await firebaseFirestore
          .collection("episodes")
          .where("created", isLessThan: datetime)
          .where("created", isGreaterThanOrEqualTo: datetime)
          .get();

      List<Episode> _filteredEpisodeList = [];

      for (QueryDocumentSnapshot _filteredEpisode in _querySnapshot.docs) {
        final _comicSnapshot = await firebaseFirestore
            .collection("comics")
            .doc(_filteredEpisode.get("comic_id"))
            .get();

        final _comic = _comicSnapshot.data() as Map<String, dynamic>;
        _filteredEpisodeList.add(EpisodeModel(
            comicId: _filteredEpisode.get("comic_id"),
            episodeName: _filteredEpisode.get("episode_name"),
            coverPhoto: _comic["cover_photo"],
            title: _comic['title']));
      }
      print(_filteredEpisodeList.length);
      return _filteredEpisodeList;
    } catch (e) {
      throw ServerException();
    }
  }
}
