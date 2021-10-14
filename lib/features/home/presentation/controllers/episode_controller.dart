import 'package:get/get.dart';
import '../../../../core/utils/show_snack_bar.dart';
import '../../domain/entities/episodes.dart';
import '../../domain/entities/photos.dart';
import '../../domain/usecases/get_episodes_usecase.dart';

class EpisodeController extends GetxController {
  final GetEpisodesUseCase getEpisodesUseCase;

  EpisodeController({required this.getEpisodesUseCase});

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
}
