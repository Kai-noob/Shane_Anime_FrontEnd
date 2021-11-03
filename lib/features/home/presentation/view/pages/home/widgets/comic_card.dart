import 'package:flutter/material.dart';
import '../../../../../domain/entities/episodes.dart';

import '../../../../../../../core/global/image_widget.dart';

import '../../../../../domain/entities/comic.dart';
import '../../details/screens/details_screen.dart';

class ComicCard extends StatelessWidget {
  final Comic comicModel;

  const ComicCard({
    Key? key,
    required this.comicModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Episode lastChapter = comicModel.episodes.last;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => DetailsScreen(comicModel: comicModel)));
            },
            child: SizedBox(
              height: 240,
              width: 140,
              child: ImageWidget(image: comicModel.coverPhoto),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            constraints: const BoxConstraints(maxWidth: 150),
            child: Text(
              comicModel.title,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  overflow: TextOverflow.ellipsis),
            ),
          ),
          Container(
            constraints: const BoxConstraints(maxWidth: 150),
            child: Text(
              "${lastChapter.episodeName}${lastChapter.episodeNumber}",
              style: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  overflow: TextOverflow.ellipsis),
            ),
          ),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}
