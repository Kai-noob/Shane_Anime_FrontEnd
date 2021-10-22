import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerCard extends StatelessWidget {
  const ShimmerCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade400,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: Colors.grey),
              height: 240,
              width: 140,
            ),
            const SizedBox(width: 8),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: Colors.grey),
              height: 240,
              width: 140,
            ),
            const SizedBox(width: 20),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: Colors.grey),
              height: 240,
              width: 140,
            ),
          ],
        ),
      ),
    );
  }
}
