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
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              width: 8.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Shimmer.fromColors(
                  baseColor: Colors.white30,
                  highlightColor: Colors.white24,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        color: Colors.grey),
                    height: 150.h,
                    width: 170.w,
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Shimmer.fromColors(
                  baseColor: Colors.white30,
                  highlightColor: Colors.white24,
                  child: Container(
                    height: 15.h,
                    width: 160.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        color: Colors.grey),
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Shimmer.fromColors(
                  baseColor: Colors.white30,
                  highlightColor: Colors.white24,
                  child: Container(
                    height: 15.h,
                    width: 70.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        color: Colors.grey),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 8.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Shimmer.fromColors(
                  baseColor: Colors.white30,
                  highlightColor: Colors.white24,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        color: Colors.grey),
                    height: 150.h,
                    width: 170.w,
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Shimmer.fromColors(
                  baseColor: Colors.white30,
                  highlightColor: Colors.white24,
                  child: Container(
                    height: 15.h,
                    width: 160.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        color: Colors.grey),
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Shimmer.fromColors(
                  baseColor: Colors.white30,
                  highlightColor: Colors.white24,
                  child: Container(
                    height: 15.h,
                    width: 70.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        color: Colors.grey),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 8.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Shimmer.fromColors(
                  baseColor: Colors.white30,
                  highlightColor: Colors.white24,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        color: Colors.grey),
                    height: 150.h,
                    width: 170.w,
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Shimmer.fromColors(
                  baseColor: Colors.white30,
                  highlightColor: Colors.white24,
                  child: Container(
                    height: 15.h,
                    width: 160.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        color: Colors.grey),
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Shimmer.fromColors(
                  baseColor: Colors.white30,
                  highlightColor: Colors.white24,
                  child: Container(
                    height: 15.h,
                    width: 70.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        color: Colors.grey),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 8.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Shimmer.fromColors(
                  baseColor: Colors.white30,
                  highlightColor: Colors.white24,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        color: Colors.grey),
                    height: 150.h,
                    width: 170.w,
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Shimmer.fromColors(
                  baseColor: Colors.white30,
                  highlightColor: Colors.white24,
                  child: Container(
                    height: 15.h,
                    width: 160.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        color: Colors.grey),
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Shimmer.fromColors(
                  baseColor: Colors.white30,
                  highlightColor: Colors.white24,
                  child: Container(
                    height: 15.h,
                    width: 70.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        color: Colors.grey),
                  ),
                ),
              ],
            ),
            SizedBox(width: 8.w),
          ],
        ),
      ),
    );
  }
}
