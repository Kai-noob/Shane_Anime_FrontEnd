import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../entities/comic.dart';
import '../repositories/comic_repo.dart';

class GetLimitAllComics {
  final ComicRepo comicRepo;

  GetLimitAllComics({required this.comicRepo});

  Future<Either<Failure, List<Comic>>> call() {
    return comicRepo.getLimitAllComics();
  }
}
