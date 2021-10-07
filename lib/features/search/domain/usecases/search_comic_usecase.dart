import 'package:movie_app/features/search/domain/entities/searchcomic.dart';
import 'package:movie_app/features/search/domain/repositories/search_comic_repo.dart';

class SearchComicUseCase {
  final SearchRepo searchRepo;

  SearchComicUseCase({required this.searchRepo});
  Future<List<SearchComic>> call({required String query}) {
    return searchRepo.searchComics(query: query);
  }
}
