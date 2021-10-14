import 'package:flutter/material.dart';
import '../../../../../domain/entities/comic.dart';

import 'episode_list_view.dart';

class DetialTabView extends StatelessWidget {
  const DetialTabView({
    Key? key,
    required this.comicModel,
  }) : super(key: key);

  final Comic comicModel;

  @override
  Widget build(BuildContext context) {
    return TabBarView(children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
        child: Text(
          comicModel.review,
          style: const TextStyle(
              height: 2.0, fontWeight: FontWeight.w500, fontSize: 15),
          textAlign: TextAlign.justify,
        ),
      ),
      EpisodeListView(
        comicId: comicModel.id,
      ),
    ]);
  }
}
