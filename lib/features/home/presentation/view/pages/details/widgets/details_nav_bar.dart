import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

class DetailsNavBar extends StatelessWidget {
  final String image;
  const DetailsNavBar({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: const BoxDecoration(
        color: Colors.deepPurpleAccent,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              EvaIcons.heart,
              color: Colors.white,
              size: 28,
            ),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.white, shape: const StadiumBorder()),
              onPressed: () {},
              child: const Text("Continue Reading"))
        ],
      ),
    );
  }
}
