import '../datasources/genre_datasource.dart';
import '../../domain/entities/comic_by_genre.dart';
import '../../domain/entities/comic_gere.dart';
import '../../domain/entities/genre.dart';
import '../../domain/repositories/genre_repo.dart';

class GenreRepoImpl implements GenreRepo {
  final GenreDataSource genreDataSource;

  GenreRepoImpl({required this.genreDataSource});
  @override
  Future<List<ComicGenre>> getComicGenre(String genreId) {
    return genreDataSource.getComicGenreFromFirebase(genreId);
  }

  @override
  Future<List<Genre>> getGenre() {
    return genreDataSource.getGenreFromFirebase();
  }

  @override
  Future<ComicByGenre> getComicByGenre(String doc) {
    return genreDataSource.getComicByGenreFromFirebase(doc);
  }
}
