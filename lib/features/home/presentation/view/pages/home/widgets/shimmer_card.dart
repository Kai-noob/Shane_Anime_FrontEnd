import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerCard extends StatelessWidget {
  const ShimmerCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Shimmer.fromColors(
        baseColor: Colors.white30,
        highlightColor: Colors.white24,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage("assets/logo/logo.png"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey),
                height: 240,
                width: 140,
              ),
              const SizedBox(width: 8),
              Container(
                decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage("assets/logo/logo.png"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey),
                height: 240,
                width: 140,
              ),
              const SizedBox(width: 8),
              Container(
                decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage("assets/logo/logo.png"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey),
                height: 240,
                width: 140,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
