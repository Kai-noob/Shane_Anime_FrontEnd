import 'package:cloud_firestore/cloud_firestore.dart';
import 'comic_datasource.dart';
import '../models/comic_model.dart';
import '../../domain/entities/comic.dart';

class ComicRemoteDataSourceImpl implements ComicRemoteDataSource {
  final FirebaseFirestore firebaseFirestore;

  ComicRemoteDataSourceImpl({required this.firebaseFirestore});
  @override
  Future<List<Comic>> getComicFromFirebase() async {
    QuerySnapshot querySnapshot =
        await firebaseFirestore.collection("comic").get();

    List<Comic> comicList = [];

    for (QueryDocumentSnapshot comic in querySnapshot.docs) {
      comicList.add(ComicModel(
          title: comic.get("title"),
          coverPhoto: comic.get("coverPhoto"),
          review: comic.get("review"),
          editorChoice: comic.get("editorChoice"),
          isFavourite: comic.get("isFavourite"),
          isCompleted: comic.get("isCompleted")));
    }
    return comicList;
  }
}
