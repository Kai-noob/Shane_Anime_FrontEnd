// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:get/get.dart';
// import 'package:get/get_instance/src/bindings_interface.dart';
// import '../../../../../data/datasources/comic_datasource.dart';
// import '../../../../../data/datasources/comic_datasource_impl.dart';
// import '../../../../../data/repositories/comic_repository_impl.dart';
// import '../../../../../domain/repositories/comic_repo.dart';
// import '../../../../../domain/usecases/get_phoots_usecase.dart';
// import '../../../../controllers/photo_controller.dart';

// class PhotoBinding extends Bindings {
//   @override
//   void dependencies() {
//     Get.lazyPut(() => PhotoController(
//           getPhotosUseCase: Get.find<GetPhotosUseCase>(),
//         ));

//     Get.lazyPut<GetPhotosUseCase>(
//         () => GetPhotosUseCase(comicRepo: Get.find<ComicRepo>()));

//     Get.lazyPut<ComicRepo>(() =>
//         ComicRepoImpl(remoteDataSource: Get.find<ComicRemoteDataSource>()));

//     Get.lazyPut<ComicRemoteDataSource>(() => ComicRemoteDataSourceImpl(
//         firebaseFirestore: Get.find<FirebaseFirestore>()));

//     final fireStore = FirebaseFirestore.instance;
//     Get.put(fireStore, permanent: true);
//   }
// }
