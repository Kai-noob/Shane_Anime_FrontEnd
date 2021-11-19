import 'package:flutter/material.dart';
import 'package:movie_app/domain/comic/comic.dart';
import 'package:movie_app/helper/global/image_widget.dart';

class DailyUpdateCard extends StatelessWidget {
  final Comic episodes;

  const DailyUpdateCard({
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
              // Navigator.of(context).push(MaterialPageRoute(
              //     builder: (_) => ReadingScreen(episodes: episodes)));
            },
            child: SizedBox(
              height: 240,
              width: 140,
              child: ImageWidget(image: episodes.coverPhoto),
            ),
          ),
          Container(
            constraints: const BoxConstraints(maxWidth: 150),
            child: Text(
              episodes.title,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              overflow: TextOverflow.ellipsis,
            ),
          ),

          // Text("${episodes.episodeName}${episodes.episodeNumber.toString()}"),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}
