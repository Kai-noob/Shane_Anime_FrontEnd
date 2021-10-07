import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:movie_app/features/comic/data/datasources/comic_datasource.dart';
import 'package:movie_app/features/comic/data/models/comic_model.dart';
import 'package:movie_app/features/comic/domain/entities/comic.dart';

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

  @override
  Future<void> toggleComicToFirebase(bool isFavourite) async {
    return await firebaseFirestore
        .collection("comic")
        .doc("1")
        .update({"isFavourite": isFavourite});
  }
}
