import 'package:flutter/material.dart';
import '../../../domain/entities/genre.dart';

import 'genre_list_view.dart';

class GenreItem extends StatelessWidget {
  final Genre genre;
  const GenreItem({
    Key? key,
    required this.genre,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => GenreListView(genre: genre)));
            },
            child: CircleAvatar(
              radius: 40,
              backgroundColor: Colors.white.withOpacity(0.2),
              child: Image.network(
                genre.icon,
                color: Colors.white,
                height: 40,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            genre.name,
            style: const TextStyle(fontFamily: "HeaderFont"),
          )
        ],
      ),
    );
  }
}
