import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';
import 'package:movie_app/core/global/error_widget.dart';
import 'package:movie_app/features/home/domain/entities/comic.dart';
import 'package:movie_app/features/home/presentation/view/pages/details/screens/details_screen.dart';
import 'package:movie_app/features/library/presentation/view/widgets/sliver_delegate.dart';
import '../../../../../core/global/loading_indicator.dart';
import '../../bloc/library_bloc.dart';

import '../../../../search/presentation/view/pages/search_page.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: NestedScrollView(
        physics: const ClampingScrollPhysics(),
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              pinned: true,
              floating: true,
              elevation: 0.0,
              title: const Text(
                "Library",
                style:
                    TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
              ),
              actions: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => SearchScreen()));
                    },
                    icon: const Icon(
                      Ionicons.search_outline,
                    ))
              ],
            ),
            SliverPersistentHeader(
              delegate: SliverAppBarDelegate(
                const TabBar(
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: Colors.black,
                  tabs: [
                    Tab(
                      text: "My Reading",
                    ),
                    Tab(
                      text: "Favourite",
                    ),
                  ],
                ),
              ),
            ),
          ];
        },
        body: TabBarView(
          children: [Container(), const FavTab()],
        ),
      ),
    );
  }
}

class FavTab extends StatelessWidget {
  const FavTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<LibraryBloc>(context).add(FetchFavouriteComic());
    return BlocBuilder<LibraryBloc, LibraryState>(
      builder: (context, state) {
        if (state is FavouriteComicSuccess) {
          if (state.favouriteComics.isEmpty) {
            return Center(
              child: Column(
                children: [
                  Icon(Ionicons.trash_bin_outline),
                ],
              ),
            );
          }
          return ListView.builder(
            itemCount: state.favouriteComics.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => DetailsScreen(
                          comicModel: Comic(
                              state.favouriteComics[index].id,
                              state.favouriteComics[index].title,
                              state.favouriteComics[index].coverPhoto,
                              state.favouriteComics[index].id,
                              true,
                              true,
                              true,
                              Timestamp(10000, 1000),
                              1)))),
                  title: Text(state.favouriteComics[index].title));
            },
          );
        }
        if (state is FavouriteComicError) {
          return ErrorMessage(message: state.message, isSliver: false);
        }
        if (state is FavouriteComicLoading) {
          return const LoadingIndicator();
        }
        return Container();
      },
    );
  }
}
