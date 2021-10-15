import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../list/list_screen.dart';

class RecentTitle extends StatelessWidget {
  const RecentTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      sliver: SliverToBoxAdapter(
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          const Text(
            "Daily Update",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          GestureDetector(
            onTap: () {
              Get.to(() => RecentAllComicView());
            },
            child: Text(
              "more",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
            ),
          )
        ]),
      ),
    );
  }
}
