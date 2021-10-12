import 'package:get/get.dart';
import 'package:movie_app/core/utils/show_snack_bar.dart';
import 'package:movie_app/features/genre/domain/entities/comic_by_genre.dart';
import 'package:movie_app/features/genre/domain/entities/comic_gere.dart';
import 'package:movie_app/features/genre/domain/entities/genre.dart';
import 'package:movie_app/features/genre/domain/usecases/get_comic_by_genre_usecase.dart';
import 'package:movie_app/features/genre/domain/usecases/get_comic_genre_usecase.dart';
import 'package:movie_app/features/genre/domain/usecases/get_genre_usecase.dart';

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

  final RxBool _isLoadingTest = false.obs;

  bool get isLoadingTest => _isLoadingTest.value;

  setLoading(bool? isLoading) {
    _isLoading.value = isLoading!;
  }

  setLoadingTest(bool? isLoadingTest) {
    _isLoadingTest.value = isLoadingTest!;
  }

  // Future<void> getComicGenre() async {
  //   try {
  //     setLoading(true);
  //     List<ComicGenre> _comicGenres = await getComicGenreUseCase.call();

  //     setLoading(false);
  //   } on SocketException {
  //     setLoading(false);
  //     SnackBarUtils().showSnackBar("No Internet Connection");
  //   } catch (e) {
  //     setLoading(false);
  //     SnackBarUtils().showSnackBar(e.toString());
  //   }
  // }

  Future<void> getGenres() async {
    try {
      setLoading(true);
      List<Genre> _genres = await getGenreUsecase.call();

      print(_genres);
      for (var genre in _genres) {
        _genreList.add(genre);
      }

      setLoading(false);
    } catch (e) {
      setLoading(false);
      SnackBarUtils().showSnackBar(e.toString());
      print(" Genres${e.toString()}");
    }
  }

  Future<void> getComicByGenres(String genreId) async {
    try {
      setLoadingTest(true);
      List<ComicGenre> _comicGenres = await getComicGenreUseCase.call(genreId);

      // List<String> _comicId = [];

      for (var i = 0; i < _comicGenres.length; i++) {
        ComicByGenre _comicByGenres =
            await getComicByGenreUseCase.call(_comicGenres[i].comicId);

        _comicByGenreList.insert(i, _comicByGenres);
        _comicByGenreList.clear();
      }

      // print("ComicGenres => ${_comicByGenres.length}");

      setLoadingTest(false);
    } catch (e) {
      setLoading(false);
      SnackBarUtils().showSnackBar("Comic By Genres${e.toString()}");
      print("Comic By Genres${e.toString()}");
    }
  }

  @override
  void onInit() async {
    await getGenres();

    super.onInit();
  }
}
