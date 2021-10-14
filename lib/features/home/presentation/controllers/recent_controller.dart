import 'package:get/get.dart';

import '../../../../core/utils/show_snack_bar.dart';
import '../../domain/entities/comic.dart';
import '../../domain/usecases/get_recent_usecase.dart';

class RecentController extends GetxController {
  final GetRecentComicUseCase getRecentUseCase;

  RecentController({
    required this.getRecentUseCase,
  });

  final RxList<Comic> _recentComicList = RxList();

  List<Comic> get recentComicList => [..._recentComicList];

  final RxList<Comic> _recentAllComicList = RxList();

  List<Comic> get recentAllComicList => [..._recentAllComicList];

  final RxBool _isLoading = false.obs;

  bool get isLoading => _isLoading.value;

  setLoading(bool? isLoading) {
    _isLoading.value = isLoading!;
  }

  Future<void> getRecentComics() async {
    try {
      setLoading(true);
      List<Comic> _recentComics = await getRecentUseCase.call();

      if (_recentComics.length < 5) {
        for (var _recentComic in _recentComics) {
          _recentComicList.add(_recentComic);
        }
      } else {
        for (var i = 0; i < 5; i++) {
          _recentComicList.add(_recentComics[i]);
        }
      }

      setLoading(false);
    } catch (e) {
      setLoading(false);
      SnackBarUtils().showSnackBar("Something wrong.Please Try Again Later.");
    }
  }

  Future<void> getAllRecentComics() async {
    try {
      setLoading(true);
      List<Comic> _recentComics = await getRecentUseCase.call();

      _recentAllComicList.value = _recentComics;

      setLoading(false);
    } catch (e) {
      setLoading(false);
      SnackBarUtils().showSnackBar("Something wrong.Please Try Again Later.");
    }
  }

  @override
  void onInit() async {
    await getRecentComics();
    await getAllRecentComics();
    super.onInit();
  }
}
