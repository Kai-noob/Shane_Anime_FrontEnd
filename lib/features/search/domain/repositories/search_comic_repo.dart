import '../entities/searchcomic.dart';

abstract class SearchRepo {
  Future<List<SearchComic>> searchComics({required String query});
}
