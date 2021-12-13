import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/application/genre/genre_bloc.dart';
import 'package:shimmer/shimmer.dart';
import '../../../helper/global/cutom_error_widget.dart';

import '../../../application/search/search_bloc.dart';
import '../../../helper/global/loading_indicator.dart';
import '../../../injection.dart';
import '../../details/details_screen.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        return state.maybeMap(
            error: (error) => CustomError(
                errorMessage: error.failure.maybeMap(
                    unexcepted: (_) => "Unexcepted Error occured.",
                    notFound: (_) => "No Saved Mangas",
                    orElse: () => "Unknown Error"),
                errorImage: "assets/logo/error.svg"),
            initial: (_) => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 50.h,
                    ),
                    CircleAvatar(
                      radius: 70.r,
                      backgroundColor: const Color(0xff1B2C3B),
                      child: Icon(
                        Icons.search_outlined,
                        color: Colors.white,
                        size: 80.w,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      "Search Your Mangas",
                      style: TextStyle(fontSize: 18.sp),
                    )
                  ],
                ),
            orElse: () => Container(),
            loading: (_) => const LoadingIndicator(),
            loaded: (state) {
              if (state.comics.isEmpty) {
                return Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 70.r,
                        backgroundColor: const Color(0xff1B2C3B),
                        child: Icon(
                          Icons.search_off_outlined,
                          color: Colors.white,
                          size: 80.w,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "No Comic Found!..",
                        style: TextStyle(
                          fontSize: 18.sp,
                        ),
                      )
                    ],
                  ),
                );
              }
              return ListView.builder(
                shrinkWrap: true,
                primary: false,
                padding: const EdgeInsets.all(10),
                itemCount: state.comics.length,
                itemBuilder: (BuildContext context, int index) {
                  return BlocProvider(
                    create: (context) => getIt<GenreBloc>()
                      ..add(GenreEvent.getComicGenres(state.comics[index].id!)),
                    child: ListTile(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => DetailsScreen(
                                  comicId: state.comics[index].id!,
                                )));
                      },
                      leading: SizedBox(
                        height: 60.h,
                        width: 60.w,
                        child: CachedNetworkImage(
                          imageUrl: state.comics[index].coverPhoto,
                          fit: BoxFit.cover,
                          placeholder: (context, url) => Container(
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: AssetImage("assets/logo/logo.png")),
                                color: Colors.grey.shade200),
                          ),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.warning_outlined, size: 35),
                        ),
                      ),
                      title: Text(
                        state.comics[index].title,
                        style: TextStyle(
                            fontSize: 16.sp, fontWeight: FontWeight.w500),
                      ),
                      subtitle: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0.h),
                        child: BlocBuilder<GenreBloc, GenreState>(
                          builder: (context, state) {
                            return state.maybeMap(
                              orElse: () => Container(),
                              // loading: (_) => Column(
                              //   crossAxisAlignment: CrossAxisAlignment.start,
                              //   children: [

                              //     SizedBox(
                              //       height: 8.h,
                              //     ),
                              //     Shimmer.fromColors(
                              //       baseColor: Colors.white30,
                              //       highlightColor: Colors.white24,
                              //       child: Container(
                              //         height: 10.h,
                              //         width: 130.w,
                              //         decoration: BoxDecoration(
                              //             borderRadius:
                              //                 BorderRadius.circular(5.r),
                              //             color: const Color(0xff1B2C3B)),
                              //       ),
                              //     ),
                              //     SizedBox(
                              //       height: 8.h,
                              //     ),
                              //     Shimmer.fromColors(
                              //       baseColor: Colors.white30,
                              //       highlightColor: Colors.white24,
                              //       child: Container(
                              //         height: 10.h,
                              //         width: 100.w,
                              //         decoration: BoxDecoration(
                              //             borderRadius:
                              //                 BorderRadius.circular(5.r),
                              //             color: const Color(0xff1B2C3B)),
                              //       ),
                              //     ),
                              //   ],
                              // ),
                              loading: (_) => Shimmer.fromColors(
                                baseColor: Colors.white30,
                                highlightColor: Colors.white24,
                                child: Container(
                                  height: 10.h,
                                  width: 200.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.r),
                                      color: const Color(0xff1B2C3B)),
                                ),
                              ),
                              loaded: (genreState) {
                                String genre = genreState.genres
                                    .map((e) => e.name)
                                    .join(",");
                                return Text(
                                  genreState.genres.isEmpty
                                      ? "No genre"
                                      : genre,
                                  style: TextStyle(
                                    fontSize: 10.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                    letterSpacing: 2.0,
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ),
                  );
                },
              );
            });
      },
    );
  }
}
