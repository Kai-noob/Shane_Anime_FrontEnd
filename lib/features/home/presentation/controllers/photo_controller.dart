import 'package:get/get.dart';
import 'package:movie_app/core/utils/show_snack_bar.dart';
import 'package:movie_app/features/home/domain/entities/photos.dart';
import 'package:movie_app/features/home/domain/usecases/get_phoots_usecase.dart';

class PhotoController extends GetxController {
  final GetPhotosUseCase getPhotosUseCase;

  PhotoController({required this.getPhotosUseCase});

  final RxList<Photos> _photoList = RxList();
  final RxList<String> _imageList = RxList();

  List<Photos> get photoList => [..._photoList];
  List<String> get imageList => [..._imageList];

  final RxBool _isLoading = false.obs;

  bool get isLoading => _isLoading.value;

  setLoading(bool? isLoading) {
    _isLoading.value = isLoading!;
  }

  Future<void> getPhotos(String comicId, String episodeName) async {
    try {
      setLoading(true);
      List<Photos> _photos = await getPhotosUseCase.call(comicId, episodeName);

      for (var _photo in _photos) {
        _photoList.add(_photo);

        for (String _images in _photo.photos) {
          _imageList.add(_images);
        }
      }
      print(_photos);
      setLoading(false);
    } catch (e) {
      setLoading(false);
      print(e.toString());
      SnackBarUtils().showSnackBar("Complete ${e.toString()}");
    }
  }
}
