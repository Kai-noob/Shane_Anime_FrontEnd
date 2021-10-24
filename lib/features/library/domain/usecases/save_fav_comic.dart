import 'package:dartz/dartz.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/features/library/domain/entities/favourite_comic.dart';
import 'package:movie_app/features/library/domain/repositories/library_repo.dart';

class SaveFavComicUseCase {
  final LibraryRepo libraryRepo;

  SaveFavComicUseCase({required this.libraryRepo});

  Future<Either<Failure, FavouriteComic>> call() {
    return libraryRepo.saveComics();
  }
}
