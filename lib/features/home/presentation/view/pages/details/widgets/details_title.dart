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
          Row(
            children: [
              Text(comicModel.title,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w500)),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Comedy",
                    style: TextStyle(color: Colors.red),
                  ))
            ],
          ),
          const SizedBox(height: 10),
          const Text("Presented by Shane Manga")
        ],
      ),
    ));
  }
}
