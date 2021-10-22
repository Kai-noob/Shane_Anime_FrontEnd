import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';
import 'package:movie_app/core/global/loading_indicator.dart';
import 'package:movie_app/features/library/presentation/bloc/library_bloc.dart';
import '../../../../home/presentation/view/pages/details/widgets/detial_sliver_delegate.dart';
import '../../../../search/presentation/view/pages/search_page.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

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
                "My List",
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
                      Ionicons.search,
                      size: 29,
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
          children: [Container(), FavTab()],
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
    BlocProvider.of<LibraryBloc>(context)..add(FetchFavouriteComic());
    return BlocBuilder<LibraryBloc, LibraryState>(
      builder: (context, state) {
        if (state is FavouriteComicSuccess) {
          return ListView.builder(
            itemCount: state.favouriteComics.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(title: Text(state.favouriteComics[index].title));
            },
          );
        }
        if (state is FavouriteComicLoading) {
          return LoadingIndicator();
        }
        return Container();
      },
    );
  }
}
