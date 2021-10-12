import 'package:movie_app/features/home/domain/entities/episodes.dart';
import 'package:movie_app/features/home/domain/entities/photos.dart';
import 'package:movie_app/features/home/domain/repositories/comic_repo.dart';

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
