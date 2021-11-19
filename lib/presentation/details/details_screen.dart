import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/application/comic_details/comic_details_bloc.dart';
import 'package:movie_app/helper/global/error_message.dart';
import 'package:movie_app/helper/global/loading_indicator.dart';
import 'package:movie_app/injection.dart';
import 'package:movie_app/presentation/details/components/details_body.dart';

class DetailsScreen extends StatelessWidget {
  final String comicId;
  const DetailsScreen({Key? key, required this.comicId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ComicDetailsBloc>()
        ..add(ComicDetailsEvent.getComicDetais(comicId)),
      child: Scaffold(
        body: BlocBuilder<ComicDetailsBloc, ComicDetailsState>(
            builder: (context, state) => state.maybeMap(
                orElse: () => const LoadingIndicator(),
                error: (e) =>
                    const ErrorMessage(message: "error", isSliver: false),
                loaded: (state) => DetailsBody(
                      comic: state.comic,
                      comicId: comicId,
                    ))),
      ),
    );
  }
}
