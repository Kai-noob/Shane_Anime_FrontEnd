import 'package:dartz/dartz.dart';
import 'package:movie_app/core/error/failure.dart';

import '../entities/photos.dart';
import '../repositories/comic_repo.dart';

class GetPhotosUseCase {
  final ComicRepo comicRepo;

  GetPhotosUseCase({required this.comicRepo});

  Future<Either<Failure, List<Photos>>> call(
    String comicId,
    String episodeName,
  ) {
    return comicRepo.getPhotos(comicId, episodeName);
  }
}
