import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';
import 'package:movie_app/core/global/loading_indicator.dart';
import 'package:movie_app/features/genre/presentation/bloc/genre_bloc.dart';

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
    return DefaultTabController(
      length: 2,
      child: NestedScrollView(
        physics: const ClampingScrollPhysics(),
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
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
                                        fontSize: 40,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        );
                      })),
            ),
            SliverPersistentHeader(
              delegate: SliverAppBarDelegate(
                const TabBar(
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: Colors.black,
                  tabs: [
                    Tab(
                      text: "Comic",
                    ),
                    Tab(
                      text: "Genres",
                    ),
                  ],
                ),
              ),
            ),
          ];
        },
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Column(
                children: const [
                  RecentTitle(),
                  RecentList(),
                  HotTitle(),
                  HotList(),
                  CompleteTitle(),
                  CompleteList()
                ],
              ),
            ),
            BlocBuilder<GenreBloc, GenreState>(
              builder: (context, state) {
                if (state is GenreLoading) {
                  return LoadingIndicator();
                }
                if (state is GenreSuccess) {
                  return ListView.builder(
                    itemCount: state.genres.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Text(state.genres[index].name),
                      );
                    },
                  );
                }
                return Container();
              },
            )
          ],
        ),
      ),
    );
  }
}
