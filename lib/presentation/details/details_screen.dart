import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/helper/global/cutom_error_widget.dart';
import 'package:movie_app/helper/global/loading_indicator.dart';
import '../../application/comic_details/comic_details_bloc.dart';
import '../../injection.dart';
import 'components/details_body.dart';

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
                orElse: () => Container(),
                loading: (_) => const LoadingIndicator(),
                error: (error) => CustomError(
                    errorMessage: error.failure.maybeMap(
                        unexcepted: (_) => "Unexcepted Error occured.",
                        notFound: (_) => "No Saved Mangas",
                        orElse: () => "Unknown Error"),
                    errorImage: "assets/logo/error.svg"),
                loaded: (state) => DetailsBody(
                      comic: state.comic,
                    ))),
      ),
    );
  }
}
