import 'package:flutter/material.dart';
import 'package:movie_app/features/home/presentation/view/pages/list/list_screen.dart';

class HotTitle extends StatelessWidget {
  const HotTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Hot Mangas",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => HotAllComicView()));
              },
              child: const Text(
                "more",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
              ),
            )
          ],
        ),
      ),
    );
  }
}
