import 'package:movie_app/features/comic/domain/entities/comic.dart';
import 'package:movie_app/features/comic/domain/repositories/comic_repo.dart';

class GetComicUseCase {
  final ComicRepo comicRepo;

  GetComicUseCase({required this.comicRepo});

  Future<List<Comic>> call() {
    return comicRepo.getComicsFromFirebase();
  }
}
