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
    QuerySnapshot querySnapshot =
        await firebaseFirestore.collection("comics").orderBy("created").get();

    List<Comic> recentComicList = [];

    for (QueryDocumentSnapshot recentComic in querySnapshot.docs) {
      recentComicList.add(ComicModel(
          id: recentComic.id,
          title: recentComic.get("title"),
          coverPhoto: recentComic.get("cover_photo"),
          review: recentComic.get("review"),
          editorChoice: recentComic.get("editor_choice"),
          published: recentComic.get("published"),
          completed: recentComic.get("completed"),
          created: recentComic.get("created")));
    }
    return recentComicList;
  }

  @override
  Future<List<Comic>> getCompleteComic() async {
    QuerySnapshot querySnapshot = await firebaseFirestore
        .collection("comics")
        .where("completed", isEqualTo: true)
        .get();

    List<Comic> completeComicList = [];

    for (QueryDocumentSnapshot completeComic in querySnapshot.docs) {
      completeComicList.add(ComicModel(
          id: completeComic.id,
          title: completeComic.get("title"),
          coverPhoto: completeComic.get("cover_photo"),
          review: completeComic.get("review"),
          editorChoice: completeComic.get("editor_choice"),
          published: completeComic.get("published"),
          completed: completeComic.get("completed"),
          created: completeComic.get("created")));
    }
    return completeComicList;
  }

  @override
  Future<List<Comic>> getHotComic() async {
    QuerySnapshot querySnapshot = await firebaseFirestore
        .collection("comics")
        .where("editor_choice", isEqualTo: true)
        .get();

    List<Comic> hotComicList = [];

    for (QueryDocumentSnapshot hotComic in querySnapshot.docs) {
      hotComicList.add(ComicModel(
          id: hotComic.id,
          title: hotComic.get("title"),
          coverPhoto: hotComic.get("cover_photo"),
          review: hotComic.get("review"),
          editorChoice: hotComic.get("editor_choice"),
          published: hotComic.get("published"),
          completed: hotComic.get("completed"),
          created: hotComic.get("created")));
    }
    return hotComicList;
  }

  @override
  Future<List<Episodes>> getEpisodes(String comicId) async {
    QuerySnapshot querySnapshot = await firebaseFirestore
        .collection("episodes")
        .orderBy("episode_name")
        .where("comic_id", isEqualTo: comicId)
        .get();

    List<Episodes> episodeList = [];

    for (QueryDocumentSnapshot episode in querySnapshot.docs) {
      episodeList.add(
        EpisodeModel(
            comicId: episode.get("comic_id"),
            episodeName: episode.get("episode_name"),
            episodes: episode.get("photo_array")),
      );
    }
    return episodeList;
  }

  @override
  Future<List<Photos>> getPhotos(String comicId, String episodeName) async {
    QuerySnapshot querySnapshot = await firebaseFirestore
        .collection("episodes")
        .where('comic_id', isEqualTo: comicId)
        .where('episode_name', isEqualTo: episodeName)
        .get();

    List<Photos> photoList = [];

    for (QueryDocumentSnapshot photo in querySnapshot.docs) {
      List<String> images = List.from(photo.get("photo_array"));
      photoList.add(PhotoModel(
          comicId: photo.get("comic_id"),
          episodeName: photo.get("episode_name"),
          photos: images));
    }

    print(photoList);

    return photoList;
  }
}
