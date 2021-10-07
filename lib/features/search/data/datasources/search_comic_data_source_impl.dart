import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:movie_app/features/search/data/datasources/search_comic_data_source.dart';
import 'package:movie_app/features/search/data/models/searchcomicmodel.dart';
import 'package:movie_app/features/search/domain/entities/searchcomic.dart';

class SearchComicDataSourceImpl implements SearchComicDataSource {
  final FirebaseFirestore firebaseFirestore;

  SearchComicDataSourceImpl({required this.firebaseFirestore});
  @override
  Future<List<SearchComic>> searchComics({required String query}) async {
    QuerySnapshot querySnapshot = await firebaseFirestore
        .collection("comic")
        .where("title", isGreaterThanOrEqualTo: query)
        .get();

    List<SearchComic> searchcomicList = [];

    for (QueryDocumentSnapshot comic in querySnapshot.docs) {
      searchcomicList.add(SearchComicModel(
          title: comic.get("title"),
          coverPhoto: comic.get("coverPhoto"),
          review: comic.get("review"),
          editorChoice: comic.get("editorChoice"),
          isFavourite: comic.get("isFavourite"),
          isCompleted: comic.get("isCompleted")));
    }
    return searchcomicList;
  }
}
