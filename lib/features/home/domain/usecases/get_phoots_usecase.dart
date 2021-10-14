import '../entities/photos.dart';
import '../repositories/comic_repo.dart';

class GetPhotosUseCase {
  final ComicRepo comicRepo;

  GetPhotosUseCase({required this.comicRepo});

  Future<List<Photos>> call(
    String comicId,
    String episodeName,
  ) {
    return comicRepo.getPhotos(comicId, episodeName);
  }
}
