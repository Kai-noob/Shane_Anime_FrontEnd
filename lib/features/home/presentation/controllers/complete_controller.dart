import 'package:get/get.dart';
import '../../../../core/utils/show_snack_bar.dart';
import '../../domain/entities/comic.dart';
import '../../domain/usecases/get_completed_comic_usecase.dart';

class CompleteController extends GetxController {
  final GetCompletedComicUseCase getCompleteUseCase;

  CompleteController({required this.getCompleteUseCase});

  final RxList<Comic> _completeComicList = RxList();

  List<Comic> get completeComicList => [..._completeComicList];

  final RxList<Comic> _allCompleteComicList = RxList();

  List<Comic> get allCompleteComicList => [..._allCompleteComicList];

  final RxBool _isLoading = false.obs;

  bool get isLoading => _isLoading.value;

  setLoading(bool? isLoading) {
    _isLoading.value = isLoading!;
  }

  Future<void> getCompleteComics() async {
    try {
      setLoading(true);
      List<Comic> _completeComics = await getCompleteUseCase.call();

      if (_completeComics.length < 6) {
        for (var _completeComic in _completeComics) {
          _completeComicList.add(_completeComic);
        }
      } else {
        for (var i = 0; i < 6; i++) {
          _completeComicList.add(_completeComics[i]);
        }
      }

      setLoading(false);
    } catch (e) {
      setLoading(false);
      SnackBarUtils().showSnackBar("Complete ${e.toString()}");
    }
  }

  Future<void> getAllCompleteComics() async {
    try {
      setLoading(true);
      List<Comic> _completeComics = await getCompleteUseCase.call();

      _allCompleteComicList.value = _completeComics;

      setLoading(false);
    } catch (e) {
      setLoading(false);
      SnackBarUtils().showSnackBar("Complete ${e.toString()}");
    }
  }

  @override
  void onInit() async {
    await getCompleteComics();
    await getAllCompleteComics();
    super.onInit();
  }
}
