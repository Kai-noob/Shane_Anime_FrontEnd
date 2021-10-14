import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/features/home/binding/home_binding.dart';
import 'package:movie_app/features/home/presentation/view/pages/details/details_screen.dart';
import '../../../../../../../core/global/image_widget.dart';
import '../../../../../../../core/global/loading_indicator.dart';
import '../../../../controllers/complete_controller.dart';

class CompleteList extends StatelessWidget {
  final CompleteController _completeController = Get.find<CompleteController>();
  CompleteList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (_completeController.isLoading) {
        return const SliverToBoxAdapter(
          child: LoadingIndicator(),
        );
      }

      return SliverGrid(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 10, crossAxisCount: 3, childAspectRatio: 0.45),
        delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
          return Column(
            children: [
              SizedBox(
                height: 150,
                child: GestureDetector(
                  onTap: () {
                    Get.to(
                        () => DetailsScreen(
                            comicModel:
                                _completeController.completeComicList[index]),
                        binding: HomeBinding());
                  },
                  child: ImageWidget(
                    image:
                        _completeController.completeComicList[index].coverPhoto,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  _completeController.completeComicList[index].title,
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      overflow: TextOverflow.ellipsis),
                ),
              )
            ],
          );
        }, childCount: _completeController.completeComicList.length),
      );
    });
  }
}
