import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';

import '../entities/searchcomic.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<SearchComic>>> searchComics(
      {required String query});
}
