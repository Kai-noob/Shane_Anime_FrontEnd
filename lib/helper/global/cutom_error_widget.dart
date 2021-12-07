import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomError extends StatelessWidget {
  final String errorMessage;
  final String errorImage;
  const CustomError({
    Key? key,
    required this.errorMessage,
    required this.errorImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          errorImage,
          height: 50.h,
        ),
        Text(errorMessage,
            style: TextStyle(fontSize: 19.sp, fontWeight: FontWeight.w600))
      ],
    );
  }
}
