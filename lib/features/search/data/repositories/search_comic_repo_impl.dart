import 'package:movie_app/features/search/data/datasources/search_comic_data_source.dart';
import 'package:movie_app/features/search/domain/entities/searchcomic.dart';
import 'package:movie_app/features/search/domain/repositories/search_comic_repo.dart';

class SearchComicRepoImpl implements SearchRepo {
  final SearchComicDataSource searchComicDataSource;

  SearchComicRepoImpl({required this.searchComicDataSource});
  @override
  Future<List<SearchComic>> searchComics({required String query}) {
    return searchComicDataSource.searchComics(query: query);
  }
}
