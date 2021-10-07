import 'package:movie_app/features/comic/domain/entities/comic.dart';

abstract class ComicRepo {
  Future<List<Comic>> getComicsFromFirebase();
}
