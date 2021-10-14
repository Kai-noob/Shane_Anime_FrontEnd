import 'package:get/get.dart';
import '../../../../core/utils/show_snack_bar.dart';
import '../../domain/entities/photos.dart';
import '../../domain/usecases/get_phoots_usecase.dart';

class PhotoController extends GetxController {
  final GetPhotosUseCase getPhotosUseCase;

  PhotoController({required this.getPhotosUseCase});

  final RxList<String> _photoList = RxList();

  List<String> get photoList => [..._photoList];

  final RxBool _isLoading = false.obs;

  bool get isLoading => _isLoading.value;

  setLoading(bool? isLoading) {
    _isLoading.value = isLoading!;
  }

  Future<void> getPhotos(String comicId, String episodeName) async {
    try {
      setLoading(true);
      List<Photos> _episodes =
          await getPhotosUseCase.call(comicId, episodeName);

      for (var _episode in _episodes) {
        for (String _photo in _episode.photos) {
          _photoList.add(_photo);
        }
      }

      setLoading(false);
    } catch (e) {
      setLoading(false);

      SnackBarUtils().showSnackBar("Something went Wrong");
    }
  }
}
