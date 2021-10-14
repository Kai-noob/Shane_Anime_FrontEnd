import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../core/global/image_widget.dart';
import '../../../../../domain/entities/comic.dart';

import 'details_tab_bar.dart';
import 'details_tab_view.dart';
import 'details_title.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({
    Key? key,
    required this.comicModel,
  }) : super(key: key);

  final Comic comicModel;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: NestedScrollView(
        physics: const ClampingScrollPhysics(),
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              expandedHeight: 200,
              floating: true,
              pinned: true,
              elevation: 0.0,
              title: Text(
                comicModel.title,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios_new),
                onPressed: () {
                  Get.back();
                },
              ),
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                background: ImageWidget(
                  image: comicModel.coverPhoto,
                ),
              ),
            ),
            DetailsTitle(comicModel: comicModel),
            const DetailsTabBar(),
          ];
        },
        body: DetialTabView(comicModel: comicModel),
      ),
    );
  }
}
