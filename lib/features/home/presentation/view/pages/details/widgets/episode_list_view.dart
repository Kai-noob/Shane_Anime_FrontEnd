import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:ionicons/ionicons.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:movie_app/core/strings/strings.dart';
import 'package:movie_app/features/home/presentation/view/pages/reading/reading_screen.dart';
import '../../../../bloc/details_bloc.dart';
import '../../../../../../../core/global/loading_indicator.dart';

class EpisodeListView extends StatelessWidget {
  final String comicId;
  const EpisodeListView({
    Key? key,
    required this.comicId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailsBloc, DetailsState>(
      builder: (context, state) {
        if (state is EpisodeLoading) {
          return const SliverToBoxAdapter(child: LoadingIndicator());
        }
        if (state is EpisodeLoaded) {
          return SliverList(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return ListTile(
                  title: Text(state.episodes[index].episodeName),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) =>
                            ReadingScreen(episodes: state.episodes[index])));
                  },
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                state.episodes[index].coverPhoto))),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      showMaterialModalBottomSheet(
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15))),
                          context: context,
                          builder: (BuildContext context) {
                            return SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.8,
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      height: 4,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Text(
                                      "Comments",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Expanded(
                                      child: ListView.builder(
                                        itemCount: 50,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return ListTile(
                                            leading: const CircleAvatar(
                                                backgroundImage:
                                                    AssetImage(image5)),
                                            title: const Text(
                                                "Nice Commic . Good Job Bro"),
                                            subtitle: Row(
                                              children: const [
                                                Icon(
                                                  Icons
                                                      .subdirectory_arrow_right,
                                                  color: Colors.grey,
                                                ),
                                                Text("Nay Yair Linn"),
                                              ],
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ));
                          });
                    },
                    icon: Icon(Ionicons.chatbubbles_outline),
                  ));
            }, childCount: state.episodes.length),
          );
        }
        return SliverToBoxAdapter(child: Container());
      },
    );
  }
}
