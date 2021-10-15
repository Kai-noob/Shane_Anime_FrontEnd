import 'package:get/get.dart';
import 'package:movie_app/features/genre/domain/usecases/get_genre_id_usecase.dart';
import 'package:movie_app/features/genre/domain/usecases/get_genre_usecase.dart';
import 'package:movie_app/features/home/domain/entities/comic.dart';
import '../../../../core/utils/show_snack_bar.dart';
import '../../domain/entities/comic_by_genre.dart';
import '../../domain/entities/comic_gere.dart';
import '../../domain/entities/genre.dart';
import '../../domain/usecases/get_comic_by_genre_usecase.dart';
import '../../domain/usecases/get_comic_id_usecase.dart';
import '../../domain/usecases/get_genres_usecase.dart';

class GenreController extends GetxController {
  final GetComicIdUseCase getComicIdUseCase;

  final GetGenresUsecase getGenresUsecase;

  final GetComicsUseCase getComicsUseCase;

  final GetGenreUsecase getGenreUsecase;

  final GetGenreIdUsecase getGenreIdUsecase;

  GenreController(
      {required this.getGenresUsecase,
      required this.getComicIdUseCase,
      required this.getGenreUsecase,
      required this.getGenreIdUsecase,
      required this.getComicsUseCase});

  final RxList<ComicGenre> _comicGenreList = RxList();

  List<ComicGenre> get comicGenreList => [..._comicGenreList];

  final RxList<Comic> _comicByGenreList = RxList();

  List<Comic> get comicByGenreList => [..._comicByGenreList];

  final RxList<Genre> _genreByComicList = RxList();

  List<Genre> get genreByComicList => [..._genreByComicList];

  final RxList<Genre> _genreList = RxList();

  List<Genre> get genreList => [..._genreList];

  final RxBool _isLoading = false.obs;

  bool get isLoading => _isLoading.value;

  final RxBool _isComicByGenreLoading = false.obs;

  bool get isComicByGenreLoading => _isComicByGenreLoading.value;

  setLoading(bool? isLoading) {
    _isLoading.value = isLoading!;
  }

  setComicByGenreLoading(bool? isComicByGenreLoading) {
    _isComicByGenreLoading.value = isComicByGenreLoading!;
  }

  Future<void> getGenres() async {
    try {
      setLoading(true);
      List<Genre> _genres = await getGenresUsecase.call();

      for (var _genre in _genres) {
        _genreList.add(_genre);
      }

      setLoading(false);
    } catch (e) {
      setLoading(false);
      SnackBarUtils().showSnackBar(e.toString());
    }
  }

  Future<void> getComicByGenres(String genreId) async {
    try {
      setComicByGenreLoading(true);

      List<ComicGenre> _comicGenres = await getComicIdUseCase.call(genreId);

      _comicByGenreList.clear();

      for (var i = 0; i < _comicGenres.length; i++) {
        Comic _comicByGenres =
            await getComicsUseCase.call(_comicGenres[i].comicId);

        _comicByGenreList.add(_comicByGenres);
      }

      setComicByGenreLoading(false);
    } catch (e) {
      setComicByGenreLoading(false);
      SnackBarUtils().showSnackBar(e.toString());
    }
  }

  Future<void> getGenresByComic(String comicId) async {
    try {
      setComicByGenreLoading(true);

      List<ComicGenre> _comicGenres = await getGenreIdUsecase.call(comicId);

      _genreByComicList.clear();

      for (var i = 0; i < _comicGenres.length; i++) {
        Genre _comicByGenres =
            await getGenreUsecase.call(_comicGenres[i].genreId);

        _genreByComicList.add(_comicByGenres);
      }

      setComicByGenreLoading(false);
    } catch (e) {
      setComicByGenreLoading(false);
      SnackBarUtils().showSnackBar(e.toString());
    }
  }

  @override
  void onInit() async {
    await getGenres();

    super.onInit();
  }
}
