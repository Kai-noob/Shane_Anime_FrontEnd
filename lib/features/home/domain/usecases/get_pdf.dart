import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../repositories/comic_repo.dart';

class GetPdf {
  final ComicRepo comicRepo;

  GetPdf({required this.comicRepo});

  Future<Either<Failure, String>> call(
      String comicId, String episodeName, int episodeNumber) {
    return comicRepo.getPdf(comicId, episodeName, episodeNumber);
  }
}
