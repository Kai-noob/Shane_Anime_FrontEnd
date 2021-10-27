import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';

import '../repositories/comic_repo.dart';

class GetImages {
  final ComicRepo comicRepo;

  GetImages({required this.comicRepo});

  Future<Either<Failure, List<String>>> call(
    String comicId,
    String episodeName,
  ) {
    return comicRepo.getImages(comicId, episodeName);
  }
}
