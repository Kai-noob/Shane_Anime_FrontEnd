import 'package:flutter/material.dart';
import '../../../../../../../core/strings/strings.dart';

class ReadingNavBar extends StatelessWidget {
  const ReadingNavBar({
    Key? key,
    required this.pageController,
    required this.currentPage,
  }) : super(key: key);

  final PageController pageController;
  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      color: Colors.deepPurpleAccent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              pageController.previousPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.linearToEaseOut);
            },
            icon: const Icon(
              Icons.arrow_upward_outlined,
              size: 28,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Text(
            "$currentPage/${images.length - 1}",
            style: const TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            width: 15,
          ),
          IconButton(
              onPressed: () {
                pageController.nextPage(
                    duration: const Duration(milliseconds: 2000),
                    curve: Curves.linearToEaseOut);
              },
              icon: const Icon(
                Icons.arrow_downward_outlined,
                size: 28,
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}
