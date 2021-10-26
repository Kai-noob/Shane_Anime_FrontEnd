import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../repositories/comic_repo.dart';

class GetPdfUseCase {
  final ComicRepo comicRepo;

  GetPdfUseCase({required this.comicRepo});

  Future<Either<Failure, String>> call(
    String comicId,
    String episodeName,
  ) {
    return comicRepo.getPdf(comicId, episodeName);
  }
}
