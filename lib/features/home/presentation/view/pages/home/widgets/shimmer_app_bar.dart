import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerAppBar extends StatelessWidget {
  const ShimmerAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: const Color(0xff212121),
      highlightColor: const Color(0xff212121),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: const DecorationImage(
            image: AssetImage("assets/logo/logo.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
