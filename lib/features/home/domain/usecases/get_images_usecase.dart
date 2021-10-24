import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';

import '../entities/photos.dart';
import '../repositories/comic_repo.dart';

class GetImagesUseCase {
  final ComicRepo comicRepo;

  GetImagesUseCase({required this.comicRepo});

  Future<Either<Failure, List<String>>> call(
    String comicId,
    String episodeName,
  ) {
    return comicRepo.getImages(comicId, episodeName);
  }
}
