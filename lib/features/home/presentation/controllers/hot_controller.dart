import 'package:get/get.dart';
import 'package:movie_app/core/utils/show_snack_bar.dart';
import 'package:movie_app/features/home/domain/entities/comic.dart';
import 'package:movie_app/features/home/domain/usecases/get_hot_comic_usecase.dart';

class HotController extends GetxController {
  final GetHotComicUseCase getHotUseCase;

  final RxList<Comic> _hotComicList = RxList();

  HotController({required this.getHotUseCase});

  List<Comic> get hotComicList => [..._hotComicList];

  final RxBool _isLoading = false.obs;

  bool get isLoading => _isLoading.value;

  setLoading(bool? isLoading) {
    _isLoading.value = isLoading!;
  }

  Future<void> getHotComics() async {
    try {
      setLoading(true);
      List<Comic> _hotComics = await getHotUseCase.call();

      for (var _hotComic in _hotComics) {
        _hotComicList.add(_hotComic);
      }

      setLoading(false);
    } catch (e) {
      setLoading(false);
      SnackBarUtils().showSnackBar("Hot ${e.toString()}");
    }
  }

  @override
  void onInit() {
    getHotComics();
    super.onInit();
  }
}
