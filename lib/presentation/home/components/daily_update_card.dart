import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../domain/episodes/episodes.dart';
import '../../../helper/global/image_widget.dart';
import '../../reader/reading_screen.dart';

class DailyUpdateCard extends StatelessWidget {
  final Episodes episodes;
  final List<Episodes> episodeList;

  const DailyUpdateCard({
    Key? key,
    required this.episodes,
    required this.episodeList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 10.h),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => ReadingScreen(
                        episode: episodes,
                      )));
            },
            child: SizedBox(
              height: 220.h,
              width: 170.w,
              child: ImageWidget(image: episodes.coverPhoto!),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                episodes.episodeName,
                style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w600),
              ),
              Text(
                episodes.episodeNumber.toString(),
                style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w600),
              ),
            ],
          ),
          const SizedBox(
            height: 3,
          ),
          Container(
            constraints: BoxConstraints(maxWidth: 150.w),
            child: Text(
              episodes.title!,
              style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}
