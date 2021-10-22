import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';
import 'package:movie_app/features/home/presentation/view/pages/details/details_review_screen.dart';
import 'package:movie_app/features/library/domain/entities/favourite_comic.dart';
import 'package:movie_app/features/library/presentation/bloc/library_bloc.dart';
import 'episode_list_view.dart';

import '../../../../../../../core/global/image_widget.dart';
import '../../../../../domain/entities/comic.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({
    Key? key,
    required this.comicModel,
  }) : super(key: key);

  final Comic comicModel;

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
                      image: NetworkImage(comicModel.coverPhoto),
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
                      Text(comicModel.title,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: () {
                              BlocProvider.of<LibraryBloc>(context).add(
                                  ToggleFavouriteComic(
                                      FavouriteComic(
                                          comicModel.id,
                                          comicModel.title,
                                          comicModel.coverPhoto),
                                      comicModel.id));
                            },
                            icon: Icon(Ionicons.heart),
                          ),
                          IconButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        DetailsReviewScreen(
                                          comicModel: comicModel,
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
        EpisodeListView(comicId: comicModel.id)
        // DetailsTitle(comicModel: comicModel),
      ],
    );
  }
}
