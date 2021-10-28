import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import '../screens/details_review_screen.dart';

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
                          const Color(0xff212121),
                          Colors.black.withOpacity(.3)
                        ])),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 6,
                                child: Text(widget.comicModel.title,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      overflow: TextOverflow.ellipsis,
                                      fontSize: 30,
                                    )),
                              ),
                              Expanded(
                                child: IconButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  DetailsReviewScreen(
                                                    comicModel:
                                                        widget.comicModel,
                                                  )));
                                    },
                                    icon: const Icon(
                                        Ionicons.information_circle_outline)),
                              ),
                            ],
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Wrap(
                              children: widget.comicModel.genres
                                  .map((e) => Container(
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 2),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 2),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                                color: Colors.white,
                                                width: 1.3)),
                                        child: Text(
                                          e.name,
                                          style: const TextStyle(fontSize: 13),
                                        ),
                                      ))
                                  .toList(),
                            ),
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
