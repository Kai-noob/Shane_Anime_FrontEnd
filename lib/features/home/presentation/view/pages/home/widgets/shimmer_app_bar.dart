import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerAppBar extends StatelessWidget {
  const ShimmerAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.white30,
      highlightColor: Colors.white24,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
