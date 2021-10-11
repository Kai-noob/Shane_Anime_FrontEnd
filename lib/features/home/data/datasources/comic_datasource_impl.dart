import 'package:cloud_firestore/cloud_firestore.dart';
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
}
