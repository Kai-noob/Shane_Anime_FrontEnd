import 'package:movie_app/features/home/domain/repositories/comic_repo.dart';

class CheckPdfOrImagesUseCase {
  final ComicRepo comicRepo;

  CheckPdfOrImagesUseCase({required this.comicRepo});

  Future<bool> call(
    String comicId,
    String episodeName,
  ) {
    return comicRepo.checkPdforImages(comicId, episodeName);
  }
}
