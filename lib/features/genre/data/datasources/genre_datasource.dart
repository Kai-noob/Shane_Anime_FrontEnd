import '../../../home/domain/entities/comic.dart';

import '../../domain/entities/genre.dart';

abstract class GenreDataSource {
  Future<List<Genre>> getGenres();

  Future<List<Genre>> getGenre(String comicId);

  Future<List<Comic>> getComics(String genreId);
}
