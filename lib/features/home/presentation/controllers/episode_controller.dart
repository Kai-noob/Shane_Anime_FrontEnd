import 'package:get/get.dart';
import 'package:movie_app/core/utils/show_snack_bar.dart';
import 'package:movie_app/features/home/domain/entities/episodes.dart';
import 'package:movie_app/features/home/domain/entities/photos.dart';
import 'package:movie_app/features/home/domain/usecases/get_episodes_usecase.dart';
import 'package:movie_app/features/home/domain/usecases/get_phoots_usecase.dart';

class EpisodeController extends GetxController {
  final GetEpisodesUseCase getEpisodesUseCase;
  final GetPhotosUseCase getPhotosUseCase;

  EpisodeController(
      {required this.getEpisodesUseCase, required this.getPhotosUseCase});

  final RxList<Episodes> _episodeList = RxList();

  List<Episodes> get episodeList => [..._episodeList];

  final RxList<Photos> _photoList = RxList();

  List<Photos> get photoList => [..._photoList];

  final RxBool _isLoading = false.obs;

  bool get isLoading => _isLoading.value;

  setLoading(bool? isLoading) {
    _isLoading.value = isLoading!;
  }

  Future<void> getEpisodes(String comicId) async {
    try {
      setLoading(true);
      List<Episodes> _episodes = await getEpisodesUseCase.call(comicId);

      _episodeList.value = _episodes;
      setLoading(false);
    } catch (e) {
      setLoading(false);
      SnackBarUtils().showSnackBar("Complete ${e.toString()}");
    }
  }

  // Future<void> getPhotos(String comicId, String episodeName) async {
  //   try {
  //     setLoading(true);
  //     List<Photos> _photos = await getPhotosUseCase.call(comicId, episodeName);

  //     for (var _photo in _photos) {
  //       _photoList.add(_photo);
  //     }
  //     print(_photos);
  //     setLoading(false);
  //   } catch (e) {
  //     setLoading(false);
  //     SnackBarUtils().showSnackBar("Complete ${e.toString()}");
  //   }
  // }
}
