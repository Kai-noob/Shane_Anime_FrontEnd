import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../application/home/hot_comic/hot_comic_bloc.dart';
import '../../helper/global/image_widget.dart';
import '../../helper/global/loading_indicator.dart';
import '../details/details_screen.dart';

import '../../injection.dart';

class HotMoreComicView extends StatelessWidget {
  const HotMoreComicView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<HotComicBloc>()..add(const HotComicEvent.getMoreHotComics()),
      child: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios_new),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            title: const Text("Hot Mangas"),
          ),
          body: BlocBuilder<HotComicBloc, HotComicState>(
              builder: (context, state) {
            return state.maybeMap(
                orElse: () => Container(),
                loading: (_) => const LoadingIndicator(),
                loaded: (state) {
                  return ListView.builder(
                    itemCount: state.comics.length,
                    itemBuilder: (BuildContext context, int index) {
                      String genre = state.comics[index].genres!
                          .map((e) => e.name)
                          .join(".");
                      return Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 18.0.w, horizontal: 8.h),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                                height: 180.h,
                                width: 140.w,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                DetailsScreen(
                                                    comicId: state
                                                        .comics[index].id!)));
                                  },
                                  child: ImageWidget(
                                    image: state.comics[index].coverPhoto,
                                  ),
                                )),
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: 10.0.w),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.w, vertical: 5.h),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: state.comics[index].completed
                                              ? Colors.green
                                              : Colors.red),
                                      child: Text(state.comics[index].completed
                                          ? "Completed"
                                          : "Ongoing"),
                                    ),
                                    SizedBox(
                                      height: 8.h,
                                    ),
                                    Text(state.comics[index].title,
                                        style: TextStyle(
                                            overflow: TextOverflow.ellipsis,
                                            fontSize: 20.sp,
                                            fontWeight: FontWeight.w800)),
                                    SizedBox(
                                      height: 6.h,
                                    ),
                                    Text(
                                      state.comics[index].genres!.isEmpty
                                          ? "No genre"
                                          : genre,
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        color: Colors.white70,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(
                                      height: 6.h,
                                    ),
                                    Text(
                                        "${state.comics[index].episodes!.length} Episodes",
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            color: Colors.white70)),
                                    SizedBox(
                                      height: 8.h,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 5),
                          ],
                        ),
                      );
                    },
                  );
                });
          })),
    );
  }
}
