import 'package:dartz/dartz.dart';
import 'package:movie_app/features/home/domain/entities/comic.dart';
import '../../../../core/error/failure.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<Comic>>> searchComics({required String query});
}
