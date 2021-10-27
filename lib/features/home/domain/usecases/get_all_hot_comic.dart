import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';

import '../entities/comic.dart';
import '../repositories/comic_repo.dart';

class GetHotComic {
  final ComicRepo comicRepo;

  GetHotComic({required this.comicRepo});

  Future<Either<Failure, List<Comic>>> call() {
    return comicRepo.getAllHotComics();
  }
}
