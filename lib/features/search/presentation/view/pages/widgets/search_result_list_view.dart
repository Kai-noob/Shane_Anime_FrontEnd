import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/global/error_widget.dart';
import 'package:movie_app/core/global/loading_indicator.dart';
import 'package:movie_app/features/home/presentation/view/pages/details/screens/details_screen.dart';
import '../../../bloc/search_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        if (state is SearchError) {
          return ErrorMessage(message: state.message, isSliver: false);
        }

        if (state is SearchLoading) {
          return const LoadingIndicator();
        }

        if (state is SearchLoaded) {
          if (state.searchComics.isEmpty) {
            return const Center(child: Text("No Comics Found"));
          }

          return ListView.builder(
            shrinkWrap: true,
            primary: false,
            padding: const EdgeInsets.all(10),
            itemCount: state.searchComics.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => DetailsScreen(
                          comicModel: state.searchComics[index])));
                },
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              state.searchComics[index].coverPhoto))),
                ),
                title: Text(
                  state.searchComics[index].title,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
                subtitle:
                    Text("${state.searchComics[index].episodeCount} Episodes"),
              );
            },
          );
        }
        return Container();
      },
    );
  }
}
