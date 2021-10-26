import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/global/date_time_transform.dart';
import 'package:movie_app/core/global/error_message.dart';
import 'package:movie_app/core/global/image_widget.dart';
import 'package:movie_app/features/home/presentation/bloc/complete_comic/complete_bloc.dart';
import 'package:movie_app/features/home/presentation/view/pages/details/screens/details_screen.dart';

class CompleteAllComicView extends StatelessWidget {
  const CompleteAllComicView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: const Text("Completed Series"),
        ),
        body: BlocBuilder<CompleteBloc, CompleteState>(
          builder: (context, state) {
            if (state is CompleterError) {
              return ErrorMessage(
                message: state.message,
                isSliver: true,
              );
            }
            if (state is CompleteLoaded) {
              return ListView.builder(
                itemCount: state.completeComics.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            height: 200,
                            width: MediaQuery.of(context).size.width * 0.45,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        DetailsScreen(
                                            comicModel:
                                                state.completeComics[index])));
                              },
                              child: ImageWidget(
                                image: state.completeComics[index].coverPhoto,
                              ),
                            )),
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(state.completeComics[index].title,
                                    style: const TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w800)),
                                Text(
                                    "${state.completeComics[index].episodeCount} Episodes"),
                                Text(DateTimeTransfrom().formatTimestamp(state
                                    .completeComics[index].created.seconds))
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                      ],
                    ),
                  );
                },
              );
            }
            return Container();
          },
        ));
  }
}
