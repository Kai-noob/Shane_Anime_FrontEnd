import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../../core/global/loading_indicator.dart';
import '../../../../controllers/episode_controller.dart';
import '../../reading/binding/photo_binding.dart';
import '../../reading/reading_screen.dart';

class EpisodeListView extends StatelessWidget {
  final EpisodeController _episodeController = Get.find<EpisodeController>();

  final String comicId;
  EpisodeListView({
    Key? key,
    required this.comicId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _episodeController.getEpisodes(comicId);

    return Obx(() {
      if (_episodeController.isLoading) {
        return const LoadingIndicator();
      }
      return ListView.builder(
        itemCount: _episodeController.episodeList.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(_episodeController.episodeList[index].episodeName),
            onTap: () {
              Get.to(
                  () => ReadingScreen(
                      photos: _episodeController.episodeList[index]),
                  binding: PhotoBinding());
            },
            leading: const Icon(
              EvaIcons.bookOpen,
              color: Colors.deepPurpleAccent,
            ),
            trailing: const Text("Free"),
          );
        },
      );
    });
  }
}
