import '../repositories/comic_repo.dart';

class CheckPdfOrImages {
  final ComicRepo comicRepo;

  CheckPdfOrImages({required this.comicRepo});

  Future<bool> call(String comicId, String episodeName, int episodeNumber) {
    return comicRepo.checkPdforImages(comicId, episodeName, episodeNumber);
  }
}
