import '../entities/comic.dart';
import '../repositories/comic_repo.dart';

class GetHotComicUseCase {
  final ComicRepo comicRepo;

  GetHotComicUseCase({required this.comicRepo});

  Future<List<Comic>> call() {
    return comicRepo.getHotComics();
  }
}
