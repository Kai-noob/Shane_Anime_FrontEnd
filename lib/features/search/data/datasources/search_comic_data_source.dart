import '../../domain/entities/searchcomic.dart';

abstract class SearchComicDataSource {
  Future<List<SearchComic>> searchComics({required String query});
}
