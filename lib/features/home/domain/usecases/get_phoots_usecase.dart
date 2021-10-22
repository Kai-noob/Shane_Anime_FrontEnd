import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';

import '../entities/photos.dart';
import '../repositories/comic_repo.dart';

class GetPhotosUseCase {
  final ComicRepo comicRepo;

  GetPhotosUseCase({required this.comicRepo});

  Future<Either<Failure, List<String>>> call(
    String comicId,
    String episodeName,
  ) {
    return comicRepo.getPhotos(comicId, episodeName);
  }
}
