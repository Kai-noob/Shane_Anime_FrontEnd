import 'package:flutter/material.dart';
import 'package:movie_app/features/home/domain/entities/episodes.dart';
import 'package:movie_app/features/home/presentation/view/pages/reading/reading_screen.dart';

import '../../../../../../../core/global/image_widget.dart';

import '../../../../../domain/entities/comic.dart';
import '../../details/details_screen.dart';

class ComicCard extends StatelessWidget {
  final Comic comicModel;

  const ComicCard({
    Key? key,
    required this.comicModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          Text(
            comicModel.title,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}

class RecentCard extends StatelessWidget {
  final RecentEpisode episodes;

  const RecentCard({
    Key? key,
    required this.episodes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => ReadingScreen(episodes: episodes)));
            },
            child: SizedBox(
              height: 240,
              width: 140,
              child: ImageWidget(image: episodes.coverPhoto),
            ),
          ),
          Text(
            episodes.title,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            episodes.episodeName,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}
