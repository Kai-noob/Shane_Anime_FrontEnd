import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:movie_app/features/search/presentation/bloc/bloc/search_bloc.dart';
import '../../../../search/injection/search_injection.dart';
import '../../../../../configs/strings/strings.dart';
import '../../../../search/presentation/view/pages/search_page.dart';

class GenriesScreen extends StatelessWidget {
  const GenriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Genre"),
        centerTitle: true,
        elevation: 0.0,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: IconButton(
                onPressed: () {
                  // Get.to(
                  //     () => BlocProvider(
                  //           create: (context) => Get.find<SearchBloc>(),
                  //           child: SearchTestScreen(),
                  //         ),
                  //     binding: SearchBinding());
                  Get.to(() => SearchScreen(), binding: SearchBinding());
                },
                icon: const Icon(EvaIcons.searchOutline, size: 30)),
          )
        ],
      ),
      body: const GenerieListView(),
    );
  }
}

class GenerieListView extends StatefulWidget {
  const GenerieListView({
    Key? key,
  }) : super(key: key);

  @override
  State<GenerieListView> createState() => _GenerieListViewState();
}

class _GenerieListViewState extends State<GenerieListView> {
  int _choiceIndex = 0;
  List<String> genres = [
    "Action",
    "Comedy",
    "Drama",
    "Historical",
    "Magic",
    "Game",
    "Music",
    "Horror",
    "Mystery",
    "Sports",
    "Vampire",
    "Romance",
    "Advanture"
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      physics: const ClampingScrollPhysics(),
      children: [
        const SizedBox(
          height: 10,
        ),
        Wrap(
            runSpacing: 6.0,
            spacing: 12.0,
            children: genres
                .map(
                  (e) => ChoiceChip(
                      selected: _choiceIndex == genres.indexOf(e),
                      selectedColor: Colors.deepPurpleAccent,
                      backgroundColor: Colors.grey.shade700,
                      onSelected: (bool selected) {
                        setState(() {
                          _choiceIndex = selected ? genres.indexOf(e) : 0;
                        });
                      },
                      labelStyle: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 13),
                      label: Text(e)),
                )
                .toList()),
        const SizedBox(
          height: 30,
        ),
        const GeneryItemWIdget(
          image: "assets/images/animeone.jpeg",
        ),
        const Divider(
          thickness: 0.8,
          indent: 15.0,
          endIndent: 15.0,
        ),
        const GeneryItemWIdget(
          image: "assets/images/animetwo.jpeg",
        ),
        const Divider(
          thickness: 0.8,
          indent: 15.0,
          endIndent: 15.0,
        ),
        const GeneryItemWIdget(
          image: "assets/images/animethree.jpeg",
        ),
        const Divider(
          thickness: 0.8,
          indent: 15.0,
          endIndent: 15.0,
        ),
        const GeneryItemWIdget(
          image: "assets/images/animefour.jpeg",
        ),
        const Divider(
          thickness: 0.8,
          indent: 15.0,
          endIndent: 15.0,
        )
      ],
    );
  }
}

class GeneryItemWIdget extends StatelessWidget {
  final String image;
  const GeneryItemWIdget({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          height: 150,
          width: MediaQuery.of(context).size.width * 0.45,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image:
                  DecorationImage(fit: BoxFit.cover, image: AssetImage(image))),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              constraints: const BoxConstraints(maxWidth: 150),
              child: const Text(label5,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text("Comedy",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurpleAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                icon: const Icon(
                  Icons.arrow_right_alt_outlined,
                  color: Colors.white,
                ),
                label: const Text(
                  "Read",
                  style: TextStyle(color: Colors.white),
                )),
          ],
        ),
      ],
    );
  }
}
