import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
                    borderRadius: BorderRadius.circular(5), color: Colors.grey),
                height: 250.h,
                width: 180.w,
              ),
              SizedBox(width: 8.w),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5), color: Colors.grey),
                height: 250.h,
                width: 180.w,
              ),
              SizedBox(width: 8.w),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5), color: Colors.grey),
                height: 250.h,
                width: 180.w,
              ),
              SizedBox(width: 8.w),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5), color: Colors.grey),
                height: 250.h,
                width: 180.w,
              ),
              SizedBox(width: 8.w),
            ],
          ),
        ),
      ),
    );
  }
}
