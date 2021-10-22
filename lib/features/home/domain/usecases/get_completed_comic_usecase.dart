import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';

import '../entities/comic.dart';
import '../repositories/comic_repo.dart';

class GetCompletedComicUseCase {
  final ComicRepo comicRepo;

  GetCompletedComicUseCase({required this.comicRepo});

  Future<Either<Failure, List<Comic>>> call() {
    return comicRepo.getCompletedComics();
  }
}
