import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../domain/comic/comic.dart';
import '../../../domain/episodes/episodes.dart';
import '../../../helper/global/image_widget.dart';
import '../../details/details_screen.dart';

class ComicCard extends StatelessWidget {
  final Comic comic;

  const ComicCard({
    Key? key,
    required this.comic,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Episodes? lastChapter;
    if (comic.episodes!.isEmpty) {
      lastChapter = Episodes(
          comicId: comic.id!,
          episodeNumber: 0,
          episodeName: "No Chapter",
          like: {},
          driveLink: "",
          pdfFile: "");
    } else {
      lastChapter = comic.episodes!.last;
    }
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 10.h),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => DetailsScreen(comicId: comic.id!)));
            },
            child: SizedBox(
              height: 220.h,
              width: 170.w,
              child: ImageWidget(image: comic.coverPhoto),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            constraints: BoxConstraints(maxWidth: 150.w),
            child: Text(
              comic.title,
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                  overflow: TextOverflow.ellipsis),
            ),
          ),
          Container(
            constraints: const BoxConstraints(maxWidth: 150),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  lastChapter.episodeName,
                  style: TextStyle(
                      fontSize: 12.sp,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      overflow: TextOverflow.ellipsis),
                ),
                Text(
                  lastChapter.episodeNumber.toString(),
                  style: TextStyle(
                      fontSize: 12.sp,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      overflow: TextOverflow.ellipsis),
                ),
              ],
            ),
          ),
          SizedBox(height: 5.h),
        ],
      ),
    );
  }
}
