import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:movie_app/core/global/image_widget.dart';
import 'package:movie_app/core/global/loading_indicator.dart';
import 'package:movie_app/features/home/presentation/bloc/complete_bloc.dart';

import 'package:movie_app/features/home/presentation/view/pages/details/details_screen.dart';

class CompleteAllComicView extends StatelessWidget {
  CompleteAllComicView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0.0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: const Text("Completed Series"),
        ),
        body: BlocBuilder<CompleteBloc, CompleteState>(
          builder: (context, state) {
            if (state is CompleteLoaded) {
              return ListView.builder(
                itemCount: state.completeComics.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            height: 200,
                            width: MediaQuery.of(context).size.width * 0.45,
                            child: GestureDetector(
                              onTap: () {
                                // Get.to(
                                //     () => DetailsScreen(
                                //         comicModel: _completeController
                                //             .allCompleteComicList[index]),
                                //     binding: HomeBinding());
                              },
                              child: ImageWidget(
                                image: state.completeComics[index].coverPhoto,
                              ),
                            )),
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(state.completeComics[index].title,
                                    style: const TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w800)),
                                // Wrap(
                                //     children: state.completeComics[index].genres
                                //         .map((e) => Text(e.name))
                                //         .toList())
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                      ],
                    ),
                  );
                },
              );
            }
            return Container();
          },
        ));
  }
}

// class HotAllComicView extends StatelessWidget {
//   final HotController _hotController = Get.find<HotController>();

//   final GenreController _genreController = Get.find<GenreController>();
//   HotAllComicView({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     // _genreController.getGenresByComic(_hotController.hotAllComicList);
//     return Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           elevation: 0.0,
//           leading: IconButton(
//             icon: const Icon(Icons.arrow_back_ios_new),
//             onPressed: () {
//               Get.back();
//             },
//           ),
//           title: const Text("Hot Mangas"),
//         ),
//         body: Obx(() {
//           if (_hotController.isLoading) {
//             return const LoadingIndicator();
//           }
//           return ListView.builder(
//             itemCount: _hotController.hotAllComicList.length,
//             itemBuilder: (BuildContext context, int index) {
//               return Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     SizedBox(
//                         height: 200,
//                         width: MediaQuery.of(context).size.width * 0.45,
//                         child: GestureDetector(
//                           onTap: () {
//                             Get.to(
//                                 () => DetailsScreen(
//                                     comicModel:
//                                         _hotController.hotAllComicList[index]),
//                                 binding: HomeBinding());
//                           },
//                           child: ImageWidget(
//                             image: _hotController
//                                 .hotAllComicList[index].coverPhoto,
//                           ),
//                         )),
//                     Expanded(
//                       child: Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 10.0),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(_hotController.hotAllComicList[index].title,
//                                 style: const TextStyle(
//                                     overflow: TextOverflow.ellipsis,
//                                     fontSize: 19,
//                                     fontWeight: FontWeight.w800)),
//                             Text(
//                               "Comedy,Action",
//                               style: TextStyle(fontSize: 15),
//                             ),
//                             Text(
//                               "Episodes- 28",
//                               style: TextStyle(
//                                   fontSize: 14, fontWeight: FontWeight.w600),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 5),
//                   ],
//                 ),
//               );
//             },
//           );
//         }));
//   }
// }

// class RecentAllComicView extends StatelessWidget {
//   final RecentController _recentController = Get.find<RecentController>();
//   RecentAllComicView({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           leading: IconButton(
//             icon: const Icon(Icons.arrow_back_ios_new),
//             onPressed: () {
//               Get.back();
//             },
//           ),
//           title: const Text("Daily Update"),
//         ),
//         body: Obx(() {
//           if (_recentController.isLoading) {
//             return const LoadingIndicator();
//           }
//           return GridView.builder(
//             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2, childAspectRatio: 0.8),
//             itemCount: _recentController.recentAllComicList.length,
//             itemBuilder: (BuildContext context, int index) {
//               return Column(
//                 children: [
//                   SizedBox(
//                       height: 150,
//                       width: MediaQuery.of(context).size.width * 0.45,
//                       child: GestureDetector(
//                         onTap: () {
//                           Get.to(
//                               () => DetailsScreen(
//                                   comicModel: _recentController
//                                       .recentAllComicList[index]),
//                               binding: HomeBinding());
//                         },
//                         child: ImageWidget(
//                           image: _recentController
//                               .recentAllComicList[index].coverPhoto,
//                         ),
//                       )),
//                   Text(_recentController.recentAllComicList[index].title,
//                       style: const TextStyle(
//                           fontSize: 16, overflow: TextOverflow.ellipsis)),
//                   const SizedBox(height: 5),
//                 ],
//               );
//             },
//           );
//         }));
//   }
// }
