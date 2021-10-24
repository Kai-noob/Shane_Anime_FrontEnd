import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/features/library/presentation/bloc/library_bloc.dart';
import '../../../bloc/details_bloc.dart';
import '../../../../../injector.dart';
import '../../../../domain/entities/comic.dart';

import 'widgets/details_body.dart';
import 'widgets/details_nav_bar.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.comicModel}) : super(key: key);

  final Comic comicModel;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<DetailsBloc>()..add(FetchEpisode(comicModel.id)),
      child: Scaffold(
          // bottomNavigationBar: DetailsNavBar(
          //   image: comicModel.coverPhoto,
          // ),
          body: DetailsBody(comicModel: comicModel)),
    );
  }
}
