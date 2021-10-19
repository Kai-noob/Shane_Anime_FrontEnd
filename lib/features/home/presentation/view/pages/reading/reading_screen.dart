// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../../../../domain/entities/episodes.dart';
// import '../../../controllers/photo_controller.dart';

// import 'widgets/reading_view.dart';

// class ReadingScreen extends StatelessWidget {
//   final PhotoController _photoController = Get.find<PhotoController>();

//   final Episodes photos;
//   ReadingScreen({Key? key, required this.photos}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text("DemonSlayer"),
//           leading: IconButton(
//             icon: const Icon(Icons.arrow_back_ios),
//             onPressed: () {
//               Get.back();
//             },
//           ),
//         ),
//         // bottomNavigationBar: ReadingNavBar(
//         //     pageController: pageController, currentPage: currentPage),
//         body: ReadingView(
//           photoController: _photoController,
//           episodes: photos,
//         ));
//   }
// }
