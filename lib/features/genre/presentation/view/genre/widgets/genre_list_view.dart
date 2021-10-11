import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/core/global/loading_indicator.dart';
import 'package:movie_app/features/genre/presentation/controllers/genre_controller.dart';

import 'genre_item.dart';

// class GenerieListView extends StatefulWidget {
//   const GenerieListView({
//     Key? key,
//   }) : super(key: key);

//   @override
//   State<GenerieListView> createState() => _GenerieListViewState();
// }

// class _GenerieListViewState extends State<GenerieListView> {
//   int _choiceIndex = 0;
//   final GenreController genreController = Get.find<GenreController>();

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       padding: const EdgeInsets.all(8),
//       physics: const ClampingScrollPhysics(),
//       children: [
//         const SizedBox(
//           height: 10,
//         ),
//         Container(
//           height: 500,
//           child:
//         // const SizedBox(
//         //   height: 30,
//         // ),
//         // const GeneryItemWIdget(
//         //   image: "assets/images/animeone.jpeg",
//         // ),
//         // const Divider(
//         //   thickness: 0.8,
//         //   indent: 15.0,
//         //   endIndent: 15.0,
//         // ),
//         // const GeneryItemWIdget(
//         //   image: "assets/images/animetwo.jpeg",
//         // ),
//         // const Divider(
//         //   thickness: 0.8,
//         //   indent: 15.0,
//         //   endIndent: 15.0,
//         // ),
//         // const GeneryItemWIdget(
//         //   image: "assets/images/animethree.jpeg",
//         // ),
//         // const Divider(
//         //   thickness: 0.8,
//         //   indent: 15.0,
//         //   endIndent: 15.0,
//         // ),
//         // const GeneryItemWIdget(
//         //   image: "assets/images/animefour.jpeg",
//         // ),
//         // const Divider(
//         //   thickness: 0.8,
//         //   indent: 15.0,
//         //   endIndent: 15.0,
//         // )
//       ],
//     );
//   }
// }

// class GenreList extends StatelessWidget {
//   const GenreList({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final GenreController genreController = Get.find();
//     return
//   }
// }
