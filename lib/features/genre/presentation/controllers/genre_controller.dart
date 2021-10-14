import 'package:get/get.dart';
import '../../../../core/utils/show_snack_bar.dart';
import '../../domain/entities/comic_by_genre.dart';
import '../../domain/entities/comic_gere.dart';
import '../../domain/entities/genre.dart';
import '../../domain/usecases/get_comic_by_genre_usecase.dart';
import '../../domain/usecases/get_comic_genre_usecase.dart';
import '../../domain/usecases/get_genre_usecase.dart';

class GenreController extends GetxController {
  final GetComicGenreUseCase getComicGenreUseCase;

  final GetGenreUsecase getGenreUsecase;

  final GetComicByGenreUseCase getComicByGenreUseCase;

  GenreController(
      {required this.getComicGenreUseCase,
      required this.getGenreUsecase,
      required this.getComicByGenreUseCase});

  final RxList<ComicGenre> _comicGenreList = RxList();

  List<ComicGenre> get comicGenreList => [..._comicGenreList];

  final RxList<ComicByGenre> _comicByGenreList = RxList();

  List<ComicByGenre> get comicByGenreList => [..._comicByGenreList];

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
      List<Genre> _genres = await getGenreUsecase.call();

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

      List<ComicGenre> _comicGenres = await getComicGenreUseCase.call(genreId);

      _comicByGenreList.clear();

      for (var i = 0; i < _comicGenres.length; i++) {
        ComicByGenre _comicByGenres =
            await getComicByGenreUseCase.call(_comicGenres[i].comicId);

        _comicByGenreList.add(_comicByGenres);
      }

      setComicByGenreLoading(false);
    } catch (e) {
      setComicByGenreLoading(false);
      SnackBarUtils().showSnackBar("Something Went Wrong");
    }
  }

  @override
  void onInit() async {
    await getGenres();

    super.onInit();
  }
}
