import '../entities/comic.dart';
import '../repositories/comic_repo.dart';

class GetRecentComicUseCase {
  final ComicRepo comicRepo;

  GetRecentComicUseCase({required this.comicRepo});

  Future<List<Comic>> call() {
    return comicRepo.getRecentComics();
  }
}
