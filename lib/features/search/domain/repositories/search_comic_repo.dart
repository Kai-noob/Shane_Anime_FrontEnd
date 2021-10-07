import 'package:movie_app/features/search/domain/entities/searchcomic.dart';

abstract class SearchRepo {
  Future<List<SearchComic>> searchComics({required String query});
}
