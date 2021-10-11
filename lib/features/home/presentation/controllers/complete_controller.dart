import 'package:get/get.dart';
import 'package:movie_app/core/utils/show_snack_bar.dart';
import 'package:movie_app/features/home/domain/entities/comic.dart';
import 'package:movie_app/features/home/domain/usecases/get_completed_comic_usecase.dart';

class CompleteController extends GetxController {
  final GetCompletedComicUseCase getCompleteUseCase;

  CompleteController({required this.getCompleteUseCase});

  final RxList<Comic> _completeComicList = RxList();

  List<Comic> get completeComicList => [..._completeComicList];

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
          print(i);
          _completeComicList.add(_completeComics[i]);
        }
      }

      print(_completeComicList);

      setLoading(false);
    } catch (e) {
      setLoading(false);
      SnackBarUtils().showSnackBar("Complete ${e.toString()}");
    }
  }

  @override
  void onInit() {
    getCompleteComics();
    super.onInit();
  }
}
