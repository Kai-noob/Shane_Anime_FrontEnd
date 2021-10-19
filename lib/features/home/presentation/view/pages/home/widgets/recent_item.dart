import 'package:flutter/material.dart';

import '../../../../../../../core/global/image_widget.dart';

import '../../../../../domain/entities/comic.dart';
import '../../details/details_screen.dart';

class RecentItem extends StatelessWidget {
  final Comic comicModel;

  const RecentItem({
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
