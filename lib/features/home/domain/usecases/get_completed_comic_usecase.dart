import '../entities/comic.dart';
import '../repositories/comic_repo.dart';

class GetCompletedComicUseCase {
  final ComicRepo comicRepo;

  GetCompletedComicUseCase({required this.comicRepo});

  Future<List<Comic>> call() {
    return comicRepo.getCompletedComics();
  }
}
