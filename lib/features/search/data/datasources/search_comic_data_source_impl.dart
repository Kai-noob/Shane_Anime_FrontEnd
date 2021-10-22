import 'package:cloud_firestore/cloud_firestore.dart';
import 'search_comic_data_source.dart';
import '../models/searchcomicmodel.dart';
import '../../domain/entities/searchcomic.dart';

class SearchComicDataSourceImpl implements SearchComicDataSource {
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  SearchComicDataSourceImpl();
  @override
  Future<List<SearchComic>> searchComics({required String query}) async {
    QuerySnapshot _querySnapshot = await firebaseFirestore
        .collection("comics")
        .where("title", isGreaterThanOrEqualTo: query)
        .get();

    List<SearchComic> _searchcomicList = [];

    for (QueryDocumentSnapshot _searchComic in _querySnapshot.docs) {
      _searchcomicList.add(SearchComicModel(
          title: _searchComic.get("title"),
          coverPhoto: _searchComic.get("cover_photo"),
          review: _searchComic.get("review"),
          editorChoice: _searchComic.get("editor_choice"),
          published: _searchComic.get("published"),
          completed: _searchComic.get("completed"),
          created: _searchComic.get("created")));
    }
    return _searchcomicList;
  }
}
