import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../list/list_screen.dart';

class CompleteTitle extends StatelessWidget {
  const CompleteTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      sliver: SliverToBoxAdapter(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Completed Series",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            TextButton(
                onPressed: () {
                  Get.to(() => CompleteAllComicView());
                },
                child: const Text("more",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.deepPurple,
                        fontSize: 17)))
          ],
        ),
      ),
    );
  }
}
