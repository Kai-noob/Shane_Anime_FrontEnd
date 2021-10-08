import '../entities/comic.dart';

abstract class ComicRepo {
  Future<List<Comic>> getComicsFromFirebase();
}
