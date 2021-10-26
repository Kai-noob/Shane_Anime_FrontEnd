import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';
import '../screens/details_review_screen.dart';
import '../../../../../../library/domain/entities/favourite_comic.dart';
import '../../../../../../library/presentation/bloc/library_bloc.dart';
import 'episode_list_view.dart';

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
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const ClampingScrollPhysics(),
      slivers: [
        SliverAppBar(
          expandedHeight: 350,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
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
              child: CachedNetworkImage(
                imageUrl: widget.comicModel.coverPhoto,
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
                          Colors.black,
                          Colors.black.withOpacity(.3)
                        ])),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text(widget.comicModel.title,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                  onPressed: () {
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
                                  },
                                  icon: Icon(Ionicons.heart_outline)),
                              IconButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                DetailsReviewScreen(
                                                  comicModel: widget.comicModel,
                                                )));
                                  },
                                  icon: const Icon(
                                      Ionicons.information_circle_outline)),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                placeholder: (context, url) => Container(
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage("assets/logo/logo.png")),
                      color: Colors.grey.shade300),
                ),
                errorWidget: (context, url, error) =>
                    const Icon(Ionicons.image, size: 35),
              ),
            ),
          ),
        ),

        const SliverPadding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          sliver: SliverToBoxAdapter(
            child: Text(
              "Chapters",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
            ),
          ),
        ),
        EpisodeListView(comicId: widget.comicModel.id)
        // DetailsTitle(comicModel: comicModel),
      ],
    );
  }
}
