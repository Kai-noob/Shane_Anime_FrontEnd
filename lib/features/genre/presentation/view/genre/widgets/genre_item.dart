import 'package:flutter/material.dart';
import 'package:movie_app/core/strings/strings.dart';
import 'package:movie_app/features/genre/domain/entities/comic_by_genre.dart';

class GeneryItemWIdget extends StatelessWidget {
  final ComicByGenre comicByGenre;
  const GeneryItemWIdget({
    Key? key,
    required this.comicByGenre,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          height: 150,
          width: MediaQuery.of(context).size.width * 0.45,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(comicByGenre.coverPhoto))),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              constraints: const BoxConstraints(maxWidth: 150),
              child: Text(comicByGenre.title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text("Comedy",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurpleAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                icon: const Icon(
                  Icons.arrow_right_alt_outlined,
                  color: Colors.white,
                ),
                label: const Text(
                  "Read",
                  style: TextStyle(color: Colors.white),
                )),
          ],
        ),
      ],
    );
  }
}
