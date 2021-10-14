import 'package:flutter/material.dart';
import '../../../../domain/entities/comic.dart';

import 'widgets/details_body.dart';
import 'widgets/details_nav_bar.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.comicModel}) : super(key: key);

  final Comic comicModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: DetailsNavBar(
          image: comicModel.coverPhoto,
        ),
        body: DetailsBody(comicModel: comicModel));
  }
}
