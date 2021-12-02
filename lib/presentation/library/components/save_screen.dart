import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../application/comic_details/comic_details_bloc.dart';
import '../../../application/save_comic/save_comic_bloc.dart';
import '../../../helper/global/error_message.dart';
import '../../../helper/global/image_widget.dart';
import '../../../helper/global/loading_indicator.dart';
import '../../../injection.dart';
import '../../details/details_screen.dart';

class SaveScreen extends StatelessWidget {
  const SaveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<SaveComicBloc>()..add(const SaveComicEvent.watchSaved()),
      child: BlocBuilder<SaveComicBloc, SaveComicState>(
        buildWhen: (previous, current) => previous != current,
        builder: (context, state) {
          return state.maybeMap(
              orElse: () => Container(),
              loading: (_) => const LoadingIndicator(),
              watchSuccess: (state) {
                if (state.saveComics.isEmpty) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 70.r,
                        backgroundColor: const Color(0xff1B2C3B),
                        child: Icon(
                          Icons.bookmark_outline,
                          color: Colors.white,
                          size: 80.w,
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        "No Saved Mangas",
                        style: TextStyle(fontSize: 18.sp),
                      )
                    ],
                  );
                }

                return GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 0.6),
                  itemCount: state.saveComics.length,
                  itemBuilder: (BuildContext context, int index) {
                    return BlocProvider(
                      create: (context) => getIt<ComicDetailsBloc>()
                        ..add(ComicDetailsEvent.getComicDetais(
                            state.saveComics[index].id)),
                      child: BlocBuilder<ComicDetailsBloc, ComicDetailsState>(
                        buildWhen: (previous, current) => previous != current,
                        builder: (context, state) {
                          return state.map(
                              loading: (_) => const LoadingIndicator(),
                              loaded: (state) {
                                return Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 5.0.w),
                                  child: Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (_) => DetailsScreen(
                                                      comicId:
                                                          state.comic.id!)));
                                        },
                                        child: SizedBox(
                                          height: 170.h,
                                          width: 150.w,
                                          child: ImageWidget(
                                              image: state.comic.coverPhoto),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 8.h,
                                      ),
                                      Container(
                                        constraints:
                                            BoxConstraints(maxWidth: 150.w),
                                        child: Text(
                                          state.comic.title,
                                          style: TextStyle(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w500),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      SizedBox(height: 5.h),
                                    ],
                                  ),
                                );
                              },
                              error: (_) => const ErrorMessage(
                                  message: "Error", isSliver: false));
                        },
                      ),
                    );
                  },
                );
                // final savedComics = state.saveComics;
                // return FavouriteList(savedComics: savedComics);
              });
        },
      ),
    );
  }
}

// class FavouriteList extends StatelessWidget {
//   final List<SaveComics> savedComics;
//   const FavouriteList({Key? key, required this.savedComics}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GridView.count(
//         crossAxisCount: 2,
//         children: List.generate(savedComics.length, (index) {
//           final savedComic = savedComics[index];
//           return BlocProvider(
//             create: (context) => getIt<ComicDetailsBloc>()
//               ..add(ComicDetailsEvent.getComicDetais(savedComic.id)),
//             child: BlocBuilder<ComicDetailsBloc, ComicDetailsState>(
//               buildWhen: (previous, current) => previous != current,
//               builder: (context, state) {
              
//               },
//             ),
//           );
//         }));
//   }
// }
