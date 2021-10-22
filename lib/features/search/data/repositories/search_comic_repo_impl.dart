import 'package:dartz/dartz.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failure.dart';

import '../datasources/search_comic_data_source.dart';
import '../../domain/entities/searchcomic.dart';
import '../../domain/repositories/search_comic_repo.dart';

class SearchComicRepoImpl implements SearchRepo {
  final SearchComicDataSource searchComicDataSource;

  SearchComicRepoImpl({required this.searchComicDataSource});
  @override
  Future<Either<Failure, List<SearchComic>>> searchComics(
      {required String query}) async {
    try {
      final List<SearchComic> _searchComics =
          await searchComicDataSource.searchComics(query: query);
      return Right(_searchComics);
    } on ServerException {
      return Left(ServerFailure());
    } on SearchException {
      return Left(SearchFailure());
    }
  }
}
