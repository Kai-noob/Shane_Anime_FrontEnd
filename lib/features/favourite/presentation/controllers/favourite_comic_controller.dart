import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../../data/models/favourite_comic.dart';

class FavouriteComicController extends GetxController {
  // RxList<FavouriteComicModel> favouriteList = <FavouriteComicModel>[].obs;
  // var appLoadState = AppLoadState.LOADING.obs;

  // void addFavourite(FavouriteComicModel item) {
  //   favouriteList.add(item);

  //   print("toSet print => ${favouriteList.toSet()}");
  // }

  // // void onUpdateItem(FavouriteComicModel item) => favouriteList[item.id - 1] = item;

  // // void toggleFavourite(FavouriteComicModel item) {
  // //   for (int i = 0; i < favouriteList.length; i++) {
  // //     if (favouriteList[i].title == item.title) {
  // //       favouriteList.removeAt(i);
  // //     } else if (favouriteList[i] == null &&
  // //         favouriteList[i].title != item.title) {
  // //       addFavourite(item);
  // //     }
  // //   }
  // // }

  // @override
  // void onInit() {
  //   List? storedFavourites = GetStorage().read<List>('favouriteList');

  //   if (storedFavourites != null) {
  //     print('List contains ${storedFavourites}');
  //     favouriteList = storedFavourites
  //         .map((e) => FavouriteComicModel.fromJson(e))
  //         .toList()
  //         .obs;
  //   }

  //   ever(favouriteList, (_) {
  //     GetStorage().write('favouriteList', favouriteList.toList());
  //   });
  //   _appStated();
  //   super.onInit();
  // }

  // Future<void> _appStated() async {
  //   new Future.delayed(const Duration(seconds: 2), () async {
  //     appLoadState.value = AppLoadState.COMPLETED;
  //   });
  // }
}

enum AppLoadState { LOADING, COMPLETED }
