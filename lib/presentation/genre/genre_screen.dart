import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../helper/global/cutom_error_widget.dart';

import '../../application/genre/genre_bloc.dart';
import '../../domain/genre/genre.dart';
import '../../helper/global/image_widget.dart';
import '../../helper/global/loading_indicator.dart';
import '../details/details_screen.dart';

import '../../injection.dart';

class GenreScreen extends StatelessWidget {
  final Genre genre;
  const GenreScreen({Key? key, required this.genre}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<GenreBloc>()..add(GenreEvent.getComicsByGenres(genre.id!)),
      child: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios_new),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            title: Text(genre.name),
          ),
          body: BlocBuilder<GenreBloc, GenreState>(builder: (context, state) {
            return state.maybeMap(
                orElse: () => Container(),
                loading: (_) => const LoadingIndicator(),
                error: (state) => Align(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 50.r,
                            backgroundColor: const Color(0xff1B2C3B),
                            child: Icon(
                              Icons.delete_outline,
                              color: Colors.white,
                              size: 50.w,
                            ),
                          ),
                          SizedBox(height: 20.h),
                          Text(
                            state.failure.maybeMap(
                              orElse: () => "Unknown Error",
                              unexcepted: (_) => "Unexpected Error",
                              notFound: (_) => "No Mangas with ${genre.name}",
                            ),
                            style: TextStyle(
                              fontSize: 15.sp,
                            ),
                          )
                        ],
                      ),
                    ),
                comicsLoaded: (state) {
                  if (state.comics.isEmpty) {
                    return CustomError(
                        errorMessage: "No ${genre.name} Comics Found.",
                        errorImage: "assets/logo/empty.svg");
                  }
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
