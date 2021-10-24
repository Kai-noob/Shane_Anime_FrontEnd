import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';
import 'package:movie_app/features/home/presentation/view/pages/details/details_review_screen.dart';
import 'package:movie_app/features/library/domain/entities/favourite_comic.dart';
import 'package:movie_app/features/library/presentation/bloc/library_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../../../injector.dart';
import 'episode_list_view.dart';

import '../../../../../../../core/global/image_widget.dart';
import '../../../../../domain/entities/comic.dart';

class DetailsBody extends StatefulWidget {
  const DetailsBody({
    Key? key,
    required this.comicModel,
  }) : super(key: key);

  final Comic comicModel;

  @override
  State<DetailsBody> createState() => _DetailsBodyState();
}

class _DetailsBodyState extends State<DetailsBody> {
  // @override
  // void initState() {
  //   WidgetsBinding.instance!.addPostFrameCallback(((_) {
  //     final state = BlocProvider.of<LibraryBloc>(context).state;
  //     if (state is AddedToFavoruite) {
  //       isFavourite = true;
  //     } else {
  //       isFavourite = false;
  //     }
  //   }));

  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const ClampingScrollPhysics(),
      slivers: [
        SliverAppBar(
          expandedHeight: 350,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          backgroundColor: Colors.black,
          flexibleSpace: FlexibleSpaceBar(
            collapseMode: CollapseMode.pin,
            background: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(widget.comicModel.coverPhoto),
                      fit: BoxFit.cover)),
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        colors: [Colors.black, Colors.black.withOpacity(.3)])),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(widget.comicModel.title,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(onPressed: () {
                            // BlocProvider(
                            //     create: (context) => sl<LibraryBloc>()
                            //       ..add(CheckFavouriteComic(
                            //           widget.comicModel.id)));
                            BlocProvider.of<LibraryBloc>(context).add(
                                ToggleFavouriteComic(
                                    FavouriteComic(
                                        widget.comicModel.id,
                                        widget.comicModel.title,
                                        widget.comicModel.coverPhoto),
                                    widget.comicModel.id));
                          }, icon: BlocBuilder<LibraryBloc, LibraryState>(
                            builder: (context, state) {
                              if (state is AddedToFavoruite) {
                                return Icon(state.isFavourite
                                    ? Ionicons.heart
                                    : Ionicons.heart_outline);
                              }

                              return SizedBox();
                            },
                          )),
                          IconButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        DetailsReviewScreen(
                                          comicModel: widget.comicModel,
                                        )));
                              },
                              icon: Icon(Ionicons.information_circle_outline)),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),

        SliverPadding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          sliver: SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Chapters",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Ionicons.swap_vertical_outline,
                      size: 23,
                    )),
              ],
            ),
          ),
        ),
        EpisodeListView(comicId: widget.comicModel.id)
        // DetailsTitle(comicModel: comicModel),
      ],
    );
  }
}
