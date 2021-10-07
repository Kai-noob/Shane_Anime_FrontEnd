import 'package:movie_app/features/comic/domain/entities/comic.dart';

abstract class ComicRemoteDataSource {
  Future<List<Comic>> getComicFromFirebase();
  Future<void> toggleComicToFirebase(bool isFavourite);
}
