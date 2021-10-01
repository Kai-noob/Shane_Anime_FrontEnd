import 'package:get/get.dart';
import 'package:movie_app/core/viewmodel/comic_view_model.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ComicViewModel());
  }
}
