import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerGenre extends StatelessWidget {
  const ShimmerGenre({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Shimmer.fromColors(
        baseColor: Colors.white30,
        highlightColor: Colors.white24,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            Container(
              padding: EdgeInsets.all(20.w),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: const Color(0xff1B2C3B)),
              height: 40.h,
            ),
            Container(
              padding: EdgeInsets.all(20.w),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: const Color(0xff1B2C3B)),
              height: 40.h,
            ),
            Container(
              padding: EdgeInsets.all(20.w),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: const Color(0xff1B2C3B)),
              height: 40.h,
            ),
            Container(
              padding: EdgeInsets.all(20.w),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: const Color(0xff1B2C3B)),
              height: 40.h,
            ),
            Container(
              padding: EdgeInsets.all(20.w),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: const Color(0xff1B2C3B)),
              height: 40.h,
            ),
            Container(
              padding: EdgeInsets.all(20.w),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: const Color(0xff1B2C3B)),
              height: 40.h,
            ),
          ]),
        ),
      ),
    );
  }
}
