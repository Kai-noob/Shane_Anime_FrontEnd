import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeTitleWidget extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  const HomeTitleWidget({
    Key? key,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
      sliver: SliverToBoxAdapter(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: TextStyle(fontSize: 20.sp),
            ),
            GestureDetector(
              onTap: onTap,
              child: Text(
                "More",
                style: TextStyle(fontSize: 17.sp),
              ),
            )
          ],
        ),
      ),
    );
  }
}
