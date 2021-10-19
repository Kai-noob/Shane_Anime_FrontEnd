import 'package:dartz/dartz.dart';
import 'package:movie_app/core/error/failure.dart';

import '../entities/comic.dart';
import '../repositories/comic_repo.dart';

class GetHotComicUseCase {
  final ComicRepo comicRepo;

  GetHotComicUseCase({required this.comicRepo});

  Future<Either<Failure, List<Comic>>> call() {
    return comicRepo.getHotComics();
  }
}
