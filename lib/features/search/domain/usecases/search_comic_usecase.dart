import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';

import '../entities/searchcomic.dart';
import '../repositories/search_comic_repo.dart';

class SearchComicUseCase {
  final SearchRepo searchRepo;

  SearchComicUseCase({required this.searchRepo});
  Future<Either<Failure, List<SearchComic>>> call({required String query}) {
    return searchRepo.searchComics(query: query);
  }
}
