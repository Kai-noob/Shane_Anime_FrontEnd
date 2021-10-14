import 'package:get/get.dart';
import '../../../../core/utils/show_snack_bar.dart';
import '../../domain/entities/comic.dart';
import '../../domain/usecases/get_hot_comic_usecase.dart';

class HotController extends GetxController {
  final GetHotComicUseCase getHotUseCase;

  HotController({required this.getHotUseCase});

  final RxList<Comic> _hotComicList = RxList();

  List<Comic> get hotComicList => [..._hotComicList];

  final RxList<Comic> _hotAllComicList = RxList();

  List<Comic> get hotAllComicList => [..._hotAllComicList];

  final RxBool _isLoading = false.obs;

  bool get isLoading => _isLoading.value;

  setLoading(bool? isLoading) {
    _isLoading.value = isLoading!;
  }

  Future<void> getHotComics() async {
    try {
      setLoading(true);
      List<Comic> _hotComics = await getHotUseCase.call();

      if (_hotComics.length < 4) {
        for (var _hotComic in _hotComics) {
          _hotComicList.add(_hotComic);
        }
      } else {
        for (var i = 0; i < 4; i++) {
          _hotComicList.add(_hotComics[i]);
        }
      }

      setLoading(false);
    } catch (e) {
      setLoading(false);
      SnackBarUtils().showSnackBar("Something went Wrong.");
    }
  }

  Future<void> getAllHotComics() async {
    try {
      setLoading(true);
      List<Comic> _hotComics = await getHotUseCase.call();
      _hotAllComicList.value = _hotComics;

      setLoading(false);
    } catch (e) {
      setLoading(false);
      SnackBarUtils().showSnackBar("Something went Wrong.");
    }
  }

  @override
  void onInit() async {
    await getHotComics();
    await getAllHotComics();
    super.onInit();
  }
}
