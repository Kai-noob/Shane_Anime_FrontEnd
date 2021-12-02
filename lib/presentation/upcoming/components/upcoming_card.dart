import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readmore/readmore.dart';
import '../../../domain/upcoming_comic/upcoming_comic.dart';

class UpcomingCard extends StatelessWidget {
  final Upcomingcomic upcomingcomic;
  const UpcomingCard({Key? key, required this.upcomingcomic}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 15,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        color: const Color(0xff1B2C3B),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.r),
                    ),
                    child: Image.network(
                      upcomingcomic.coverPhoto,
                      fit: BoxFit.fitWidth,
                      width: 150.w,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            bottom: 10.h, left: 10.w, right: 10.w),
                        child: Text(upcomingcomic.title,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w700)),
                      ),
                      Row(
                        children: [
                          Expanded(
                              flex: 2,
                              child: Padding(
                                padding: EdgeInsets.only(left: 10.0.w),
                                child: Text(
                                  "Total Episodes - ",
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                              )),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(right: 10.w),
                              child: Text(upcomingcomic.episodeNumber,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10.0.w),
                      child: Text(
                        "Release  Date ",
                        style: TextStyle(
                            fontSize: 18.sp,
                            color: Colors.red,
                            fontWeight: FontWeight.w600),
                      ),
                    )),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.only(right: 10.w),
                    child: Text(upcomingcomic.releaseDate,
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: 15.0.w, bottom: 20.h, right: 15.0.w),
              child: ReadMoreText(
                upcomingcomic.review,
                style: TextStyle(
                    height: 1.8,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.normal),
                textAlign: TextAlign.justify,
                trimCollapsedText: "Read More",
                trimLength: 180,
                trimExpandedText: "See Less",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
