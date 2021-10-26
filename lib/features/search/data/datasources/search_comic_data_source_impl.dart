import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:movie_app/features/home/data/models/comic_model.dart';
import 'package:movie_app/features/home/domain/entities/comic.dart';
import 'search_comic_data_source.dart';

class SearchComicDataSourceImpl implements SearchComicDataSource {
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  SearchComicDataSourceImpl();
  @override
  Future<List<Comic>> searchComics({required String query}) async {
    QuerySnapshot _querySnapshot = await firebaseFirestore
        .collection("comics")
        .where("title", isGreaterThanOrEqualTo: query)
        .get();

    List<Comic> _searchcomicList = [];

    for (QueryDocumentSnapshot _searchComic in _querySnapshot.docs) {
      QuerySnapshot _episodeSnapshot = await firebaseFirestore
          .collection("episodes")
          .orderBy("episode_name")
          .where("comic_id", isEqualTo: _searchComic.id)
          .get();
      _searchcomicList.add(ComicModel(
          id: _searchComic.id,
          title: _searchComic.get("title"),
          coverPhoto: _searchComic.get("cover_photo"),
          review: _searchComic.get("review"),
          editorChoice: _searchComic.get("editor_choice"),
          published: _searchComic.get("published"),
          completed: _searchComic.get("completed"),
          created: _searchComic.get("created"),
          episodeCount: _episodeSnapshot.size));
    }
    return _searchcomicList;
  }
}
