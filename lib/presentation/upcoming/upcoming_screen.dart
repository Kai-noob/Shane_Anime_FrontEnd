import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../helper/global/cutom_error_widget.dart';
import '../../application/upcoming_comic/upcoming_comic_bloc.dart';
import '../../helper/global/loading_indicator.dart';

import '../../injection.dart';
import 'components/upcoming_card.dart';

class UpcomingScreen extends StatelessWidget {
  const UpcomingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<UpcomingComicBloc>()
        ..add(const UpcomingComicEvent.getUpcomingComics()),
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Upcoming Comics"),
            elevation: 0.0,
          ),
          body: BlocBuilder<UpcomingComicBloc, UpcomingComicState>(
            builder: (context, state) {
              return state.maybeMap(
                orElse: () => Container(),
                error: (error) => CustomError(
                    errorMessage: error.failure.maybeMap(
                        unexcepted: (_) => "Unexcepted Error occured.",
                        notFound: (_) => "No Saved Mangas",
                        orElse: () => "Unknown Error"),
                    errorImage: "assets/logo/error.svg"),
                loading: (_) => const LoadingIndicator(),
                loaded: (state) => ListView.builder(
                  physics: const ClampingScrollPhysics(),
                  itemCount: state.upcomingComics.length,
                  itemBuilder: (BuildContext context, int index) {
                    return UpcomingCard(
                      upcomingcomic: state.upcomingComics[index],
                    );
                  },
                ),
              );
            },
          )),
    );
  }
}
