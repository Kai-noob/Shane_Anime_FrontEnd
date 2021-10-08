import '../datasources/search_comic_data_source.dart';
import '../../domain/entities/searchcomic.dart';
import '../../domain/repositories/search_comic_repo.dart';

class SearchComicRepoImpl implements SearchRepo {
  final SearchComicDataSource searchComicDataSource;

  SearchComicRepoImpl({required this.searchComicDataSource});
  @override
  Future<List<SearchComic>> searchComics({required String query}) {
    return searchComicDataSource.searchComics(query: query);
  }
}
