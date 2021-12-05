import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../application/search/search_bloc.dart';
import '../../../helper/global/loading_indicator.dart';
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
            error: (error) => error.failure.maybeMap(
                orElse: () => Container(),
                notFound: (_) => CustomError(
                      errorImage: "assets/logo/error.svg",
                      errorMessage: "Not Found Comics",
                    ),
                unexcepted: (_) => Column(children: [
                      SvgPicture.asset(
                        "assets/logo/empty.svg",
                        height: 50.h,
                      ),
                      Text("Un excepted error",
                          style: TextStyle(
                              fontSize: 19.sp, fontWeight: FontWeight.w600))
                    ])),
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
              return ListView.builder(
                shrinkWrap: true,
                primary: false,
                padding: const EdgeInsets.all(10),
                itemCount: state.comics.length,
                itemBuilder: (BuildContext context, int index) {
                  String genre =
                      state.comics[index].genres!.map((e) => e.name).join(",");
                  return ListTile(
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
                    subtitle: Text(genre),
                  );
                },
              );
            });
      },
    );
  }
}

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
