import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import '../../../../../../../core/strings/strings.dart';

class DetailsNavBar extends StatelessWidget {
  final String image;
  const DetailsNavBar({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xfffa411b)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.thumb_up_alt_rounded,
              color: Colors.white,
              size: 28,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Ionicons.chatbox_ellipses_outline,
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
