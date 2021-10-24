import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
          return Center(
            child: Text(state.message),
          );
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
                leading: CircleAvatar(
                  backgroundImage:
                      NetworkImage(state.searchComics[index].coverPhoto),
                ),
                title: Text(
                  state.searchComics[index].title,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
              );
            },
          );
        }
        return Container();
      },
    );
  }
}
