import 'package:dartz/dartz.dart';
import '../../../home/domain/entities/comic.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failure.dart';

import '../../domain/repositories/search_comic_repo.dart';
import '../datasources/search_comic_data_source.dart';

class SearchComicRepoImpl implements SearchRepo {
  final SearchComicDataSource searchComicDataSource;

  SearchComicRepoImpl({required this.searchComicDataSource});
  @override
  Future<Either<Failure, List<Comic>>> searchComics(
      {required String query}) async {
    try {
      final List<Comic> _searchComics =
          await searchComicDataSource.searchComics(query: query);
      return Right(_searchComics);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
