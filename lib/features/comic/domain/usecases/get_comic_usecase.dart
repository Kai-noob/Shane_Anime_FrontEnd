import '../entities/comic.dart';
import '../repositories/comic_repo.dart';

class GetComicUseCase {
  final ComicRepo comicRepo;

  GetComicUseCase({required this.comicRepo});

  Future<List<Comic>> call() {
    return comicRepo.getComicsFromFirebase();
  }
}
