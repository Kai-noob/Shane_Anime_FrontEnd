import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:movie_app/domain/episodes/episodes.dart';
import 'package:movie_app/presentation/reader/reading_screen.dart';

class EpisodeListView extends StatelessWidget {
  final List<Episodes> episodes;
  const EpisodeListView({
    Key? key,
    required this.episodes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            // tileColor: episodes.contains(state.episodes[index])
            //     ? Colors.grey.withOpacity(0.1)
            //     : null,
            title: Text(
              " ${episodes[index].episodeName}"
              "${episodes[index].episodeNumber.toString()}",
              style: TextStyle(
                  color: episodes.contains(episodes[index])
                      ? Colors.grey.shade50
                      : Colors.white,
                  fontWeight: episodes.contains(episodes[index])
                      ? FontWeight.w100
                      : null),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => ReadingScreen(episode: episodes[index])));
            },
            // trailing: episodes.last == state.episodes[index]
            //     ? const Visibility(visible: true, child: Icon(Icons.done))
            //     : const Visibility(
            //         visible: false, child: Icon(Icons.done)),
            // trailing: episodes.isEmpty
            //     ? null
            //     : episodes.last == state.episodes[index]
            //         ? const Visibility(
            //             visible: true, child: Icon(Ionicons.eye_outline))
            //         : const Visibility(
            //             visible: false,
            //             child: Icon(Ionicons.eye_outline)),
            leading: SizedBox(
              height: 50,
              width: 50,
              child: CachedNetworkImage(
                imageUrl: episodes[index].coverPhoto!,
                fit: BoxFit.cover,
                placeholder: (context, url) => Container(
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage("assets/logo/logo.png")),
                      color: Colors.grey.shade200),
                ),
                errorWidget: (context, url, error) =>
                    const Icon(Ionicons.warning_outline, size: 35),
              ),
            ),
          ),
        );
      }, childCount: episodes.length),
    );
  }
}
