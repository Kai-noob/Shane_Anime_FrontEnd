import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:ionicons/ionicons.dart';
import 'package:movie_app/core/global/image_widget.dart';
import 'package:movie_app/core/global/loading_indicator.dart';
import 'package:movie_app/features/genre/domain/entities/genre.dart';
import 'package:movie_app/features/genre/presentation/bloc/genre_bloc.dart';
import 'package:movie_app/features/home/presentation/view/pages/details/details_screen.dart';
import 'package:movie_app/features/home/presentation/view/pages/home/widgets/genre_list.dart';

import '../../../../../injector.dart';
import '../details/widgets/detial_sliver_delegate.dart';
import 'widgets/recent_title.dart';

import 'widgets/complete_list.dart';
import 'widgets/complete_title.dart';
import 'widgets/hot_list.dart';

import 'widgets/hot_title.dart';

import 'widgets/recent_list.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List images = [
    "assets/images/manga.jpg",
    "assets/images/manga.jpg",
    "assets/images/manga.jpg",
    "assets/images/manga.jpg",

    // "assets/images/animethree.jpeg",
    // "assets/images/animethree.jpeg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: HomeBody(
      images: images,
    ));
  }
}

class HomeBody extends StatefulWidget {
  const HomeBody({
    Key? key,
    required this.images,
  }) : super(key: key);

  final List images;

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 350,
          backgroundColor: Colors.black,
          flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.pin,
              background: PageView.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/manga.jpg"),
                              fit: BoxFit.cover)),
                      child: Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.bottomRight,
                                colors: [
                              Colors.black,
                              Colors.black.withOpacity(.3)
                            ])),
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text("Your Name",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    );
                  })),
        ),
        RecentTitle(),
        RecentList(),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          sliver: SliverToBoxAdapter(
            child: Text(
              "Genres",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
        ),
        GenreList(),
        HotTitle(),
        HotList(),
        CompleteTitle(),
        CompleteList()
      ],
    );
  }
}

// class GenreList extends StatelessWidget {
//   const GenreList({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     BlocProvider.of<GenreBloc>(context).add(FetchGenres());
//     return BlocBuilder<GenreBloc, GenreState>(
//       builder: (context, state) {
//         if (state is GenreLoading) {
//           return LoadingIndicator();
//         }
//         if (state is GenreSuccess) {
//           return ListView.builder(
//             itemCount: state.genres.length,
//             itemBuilder: (BuildContext context, int index) {
//               return ListTile(
//                 onTap: () {
//                   Navigator.of(context).push(MaterialPageRoute(
//                       builder: (_) =>
//                           GenreListScreen(genre: state.genres[index])));
//                 },
//                 title: Text(state.genres[index].name),
//               );
//             },
//           );
//         }
//         return Container();
//       },
//     );
//   }
// }

class GenreListView extends StatelessWidget {
  final Genre genre;
  const GenreListView({Key? key, required this.genre}) : super(key: key);

  String formatTimestamp(int timestamp) {
    var format = DateFormat('d MMM, hh:mm a');
    var date = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
    return format.format(date);
  }

  @override
  Widget build(BuildContext context) {
    // BlocProvider.of<GenreBloc>(context).add(FetchComics(genre.id));
    return BlocProvider(
      create: (context) => GenreBloc(sl(), sl())..add(FetchComics(genre.id)),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: Text(genre.name),
        ),
        body: BlocBuilder<GenreBloc, GenreState>(
          builder: (context, state) {
            if (state is ComicsLoading) {
              return LoadingIndicator();
            }
            if (state is ComicsSuccess) {
              if (state.comics.isEmpty) {
                return Center(
                  child: Text("No Releated Comics Found"),
                );
              }
              return ListView.builder(
                itemCount: state.comics.length,
                itemBuilder: (BuildContext context, int index) {
                  print("Comic Length${state.comics.length}");
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
                                            comicModel: state.comics[index])));
                              },
                              child: ImageWidget(
                                image: state.comics[index].coverPhoto,
                              ),
                            )),
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(state.comics[index].title,
                                    style: const TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w800)),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 5),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: state.comics[index].completed
                                            ? Colors.green
                                            : Colors.red,
                                      ),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Text(
                                    state.comics[index].completed
                                        ? "Completed"
                                        : "On going",
                                    style: TextStyle(
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                                Text(
                                    "${state.comics[index].episodeCount} Episodes"),
                                Text(formatTimestamp(
                                    state.comics[index].created.seconds))
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
            if (state is ComicsError) {
              return Center(
                child: Text(state.message),
              );
            }
            return Container();
          },
        ),
      ),
    );
  }
}
