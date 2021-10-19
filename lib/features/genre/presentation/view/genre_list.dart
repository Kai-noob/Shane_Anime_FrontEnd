// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../../../../core/global/loading_indicator.dart';
// import '../controllers/genre_controller.dart';
// import 'genre_screen.dart';

// class GenreList extends StatelessWidget {
//   final GenreController _genreController = Get.find<GenreController>();
//   GenreList({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SliverToBoxAdapter(
//       child: Obx(() {
//         if (_genreController.isLoading) {
//           return const LoadingIndicator();
//         }
//         return Wrap(
//             runSpacing: 10,
//             runAlignment: WrapAlignment.spaceEvenly,
//             children: _genreController.genreList.map(
//               (e) {
//                 return Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 10.0),
//                     child: ActionChip(
//                         padding: EdgeInsets.zero,
//                         label: Text(e.name),
//                         labelStyle: TextStyle(color: Colors.white),
//                         onPressed: () {
//                           Get.to(() => GenreScreen(
//                                 genre: e,
//                               ));
//                         },
//                         backgroundColor: Color(0xfffa411b).withOpacity(0.6)));
//               },
//             ).toList());
//       }),
//     );
//   }
// }
