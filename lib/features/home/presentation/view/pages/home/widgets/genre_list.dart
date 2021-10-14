import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../../core/global/loading_indicator.dart';
import '../../../../../../genre/presentation/controllers/genre_controller.dart';
import '../../list/list_screen.dart';

class GenreList extends StatelessWidget {
  final GenreController _genreController = Get.find<GenreController>();
  GenreList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Obx(() {
        if (_genreController.isLoading) {
          return const LoadingIndicator();
        }
        return Wrap(
            children: _genreController.genreList.map(
          (e) {
            // return Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 10),
            //   child: Column(
            //     children: [
            //       GestureDetector(
            //         onTap: () {
            // Get.to(GenreScreen(
            //   genre: e,
            // ));
            //         },
            //         child: CircleAvatar(
            //           radius: 35,
            //           backgroundImage: NetworkImage(e.image),
            //         ),
            //       ),
            //       Text(e.name)
            //     ],
            //   ),
            // );
            return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: ActionChip(
                    padding: EdgeInsets.all(2.0),
                    // avatar: CircleAvatar(
                    //   backgroundColor: Colors.redAccent,
                    //   child: Icon(
                    //     Icons.mode_comment,
                    //     color: Colors.white,
                    //     size: 20,
                    //   ),
                    // ),
                    label: Text(e.name),
                    onPressed: () {
                      Get.to(GenreScreen(
                        genre: e,
                      ));
                    },
                    backgroundColor: Colors.purple.withOpacity(0.2)));
          },
        ).toList());
      }),
    );
  }
}
