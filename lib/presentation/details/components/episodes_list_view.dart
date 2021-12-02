import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../domain/episodes/episodes.dart';
import '../../reader/reading_screen.dart';

class EpisodeListView extends StatelessWidget {
  final List<Episodes> episodes;
  final bool isDecending;
  const EpisodeListView({
    Key? key,
    required this.episodes,
    required this.isDecending,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        final sortEpisodes =
            isDecending ? episodes.reversed.toList() : episodes;
        final episode = sortEpisodes[index];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r)),
            title: Row(
              children: [
                Text(
                  episode.episodeName,
                  style: TextStyle(
                      color: Colors.grey.shade50, fontWeight: FontWeight.w100),
                ),
                Text(
                  episode.episodeNumber.toString(),
                  style: TextStyle(
                      color: Colors.grey.shade50, fontWeight: FontWeight.w100),
                ),
              ],
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => ReadingScreen(
                        episode: sortEpisodes[index],
                      )));
            },
            leading: SizedBox(
              height: 50.h,
              width: 50.w,
              child: CachedNetworkImage(
                imageUrl: episode.coverPhoto!,
                fit: BoxFit.cover,
                placeholder: (context, url) => Container(
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage("assets/logo/logo.png")),
                      color: Colors.grey.shade200),
                ),
                errorWidget: (context, url, error) =>
                    const Icon(Icons.warning_outlined, size: 35),
              ),
            ),
          ),
        );
      }, childCount: episodes.length),
    );
  }
}
