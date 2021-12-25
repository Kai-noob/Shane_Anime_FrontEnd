import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:movie_app/application/episodes/episodes_bloc.dart';
import 'package:movie_app/application/genre/genre_bloc.dart';
import 'package:startapp/startapp.dart';
import '../../helper/global/cutom_error_widget.dart';
import '../../helper/global/loading_indicator.dart';
import '../../application/comic_details/comic_details_bloc.dart';
import '../../injection.dart';
import 'components/details_body.dart';

class DetailsScreen extends StatefulWidget {
  final String comicId;
  const DetailsScreen({Key? key, required this.comicId}) : super(key: key);

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => getIt<ComicDetailsBloc>()
              ..add(ComicDetailsEvent.getComicDetais(widget.comicId))),
        BlocProvider(
            create: (context) => getIt<EpisodesBloc>()
              ..add(EpisodesEvent.getLatestEpisodes(widget.comicId))),
        BlocProvider(
            create: (context) => getIt<GenreBloc>()
              ..add(GenreEvent.getComicGenres(widget.comicId))),
      ],
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
        bottomNavigationBar: AdBanner(),
      ),
    );
  }
}
