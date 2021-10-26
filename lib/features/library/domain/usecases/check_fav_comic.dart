import '../repositories/library_repo.dart';

class CheckFavComiUseCase {
  final LibraryRepo favouriteRepo;

  CheckFavComiUseCase({required this.favouriteRepo});

  Future<bool> call({required String comicId}) {
    return favouriteRepo.checkFavourite(comicId: comicId);
  }
}
