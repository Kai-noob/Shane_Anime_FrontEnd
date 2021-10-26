import 'package:dartz/dartz.dart';
import 'package:movie_app/features/home/domain/entities/comic.dart';
import '../../../../core/error/failure.dart';

import '../repositories/search_comic_repo.dart';

class SearchComicUseCase {
  final SearchRepo searchRepo;

  SearchComicUseCase({required this.searchRepo});
  Future<Either<Failure, List<Comic>>> call({required String query}) {
    return searchRepo.searchComics(query: query);
  }
}
