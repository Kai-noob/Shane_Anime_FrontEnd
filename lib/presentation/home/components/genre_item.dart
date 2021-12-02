import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../domain/genre/genre.dart';
import '../../genre/genre_screen.dart';

class GenreItem extends StatelessWidget {
  final Genre genre;
  const GenreItem({
    Key? key,
    required this.genre,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0.w),
      child: Column(
        children: [
          GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => GenreScreen(genre: genre)));
              },
              child: Container(
                padding: EdgeInsets.all(20.w),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: const Color(0xff1B2C3B)),
                child: CachedNetworkImage(
                  imageUrl: genre.icon,
                  errorWidget: (context, url, error) =>
                      Icon(Icons.image, size: 35.w),
                  color: Colors.white,
                  height: 40.h,
                ),
              )),
          SizedBox(height: 8.h),
          Text(
            genre.name,
            style: const TextStyle(fontFamily: "HeaderFont"),
          )
        ],
      ),
    );
  }
}
