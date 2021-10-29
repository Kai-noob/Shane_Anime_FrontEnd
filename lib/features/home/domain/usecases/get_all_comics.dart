import 'package:dartz/dartz.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/features/home/domain/entities/comic.dart';
import 'package:movie_app/features/home/domain/repositories/comic_repo.dart';

class GetAllComics {
  final ComicRepo comicRepo;

  GetAllComics({required this.comicRepo});

  Future<Either<Failure, List<Comic>>> call() {
    return comicRepo.getAllComics();
  }
}
