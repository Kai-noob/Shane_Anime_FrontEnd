import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/application/home/hot_comic/hot_comic_bloc.dart';
import 'package:movie_app/helper/global/cutom_error_widget.dart';
import 'package:movie_app/presentation/details/details_screen.dart';
import 'package:movie_app/presentation/search/search_screen.dart';

import 'shimmer_app_bar.dart';

class HomeAppBar extends StatefulWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: const Text("Shane Manga MM"),
      elevation: 0.0,
      expandedHeight: 400.h,
      backgroundColor: const Color(0xFF1C1D21),
      actions: [
        IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => SearchScreen()));
            },
            icon: const Icon(
              Icons.search_rounded,
              size: 30,
            ))
      ],
      flexibleSpace: FlexibleSpaceBar(
          collapseMode: CollapseMode.pin,
          background: BlocBuilder<HotComicBloc, HotComicState>(
            builder: (context, state) => state.maybeMap(
                orElse: () => Container(),
                error: (error) => CustomError(
                    errorMessage: error.failure.maybeMap(
                        unexcepted: (_) => "Unexcepted Error occured.",
                        notFound: (_) => "No Saved Mangas",
                        orElse: () => "Unknown Error"),
                    errorImage: "assets/logo/error.svg"),
                loading: (_) => const ShimmerAppBar(),
                loaded: (state) {
                  return PageView.builder(
                      onPageChanged: (value) {
                        setState(() {
                          currentIndex = value;
                        });
                      },
                      itemCount: state.comics.length,
                      itemBuilder: (BuildContext context, int index) {
                        String genre = state.comics[index].genres!
                            .map((e) => e.name)
                            .join("/");

                        return GestureDetector(
                          onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      DetailsScreen(
                                          comicId: state.comics[index].id!))),
                          child: CachedNetworkImage(
                            imageUrl: state.comics[index].coverPhoto,
                            imageBuilder: (context, imageProvider) => Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                  image: imageProvider,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        begin: Alignment.bottomRight,
                                        colors: [
                                      const Color(0xFF1C1D21),
                                      const Color(0xFF1C1D21).withOpacity(.3)
                                    ])),
                                child: Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Text(genre,
                                          style: TextStyle(fontSize: 15.sp)),
                                      Text(state.comics[index].title,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "HeaderFont",
                                            fontSize: 30.sp,
                                          )),
                                      SizedBox(
                                        height: 8.h,
                                      ),
                                      SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: List.generate(
                                                state.comics.length,
                                                (index) =>
                                                    buildDots(index: index))),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            placeholder: (context, url) => Container(
                              decoration: BoxDecoration(
                                  image: const DecorationImage(
                                      image:
                                          AssetImage("assets/logo/logo.png")),
                                  color: Colors.grey.shade300),
                            ),
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.image_outlined, size: 35),
                          ),
                        );
                      });
                }),
          )),
    );
  }

  Widget buildDots({required int index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        height: 6,
        width: currentIndex == index ? 20 : 8,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: currentIndex == index ? Colors.red : Colors.white),
      ),
    );
  }
}
