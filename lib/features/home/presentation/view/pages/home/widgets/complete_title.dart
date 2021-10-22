import 'package:flutter/material.dart';
import 'package:movie_app/features/home/presentation/view/pages/list/list_screen.dart';

class CompleteTitle extends StatelessWidget {
  const CompleteTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Completed Series",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => CompleteAllComicView()));
            },
            child: const Text(
              "more",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
            ),
          )
        ],
      ),
    );
  }
}
