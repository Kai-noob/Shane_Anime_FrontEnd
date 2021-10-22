import 'package:flutter/material.dart';

import '../../../../../domain/entities/comic.dart';

class DetailsTitle extends StatelessWidget {
  const DetailsTitle({
    Key? key,
    required this.comicModel,
  }) : super(key: key);

  final Comic comicModel;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Container(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(comicModel.title,
              style:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
          //  Row(
          //   children: _genreController.genreByComicList
          //       .map((e) => Padding(
          //             padding: const EdgeInsets.symmetric(horizontal: 10.0),
          //             child: Chip(
          //               labelPadding: EdgeInsets.zero,
          //               backgroundColor: Color(0xfffa411b).withOpacity(0.6),
          //               labelStyle: TextStyle(color: Colors.white),
          //               label: Text(e.name),
          //             ),
          //           ))
          //       .toList(),
          // ),
          const SizedBox(height: 10),
        ],
      ),
    ));
  }
}
