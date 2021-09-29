import 'package:flutter/material.dart';

class GenriesScreen extends StatelessWidget {
  const GenriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Container(
            margin: const EdgeInsets.only(top: 20, bottom: 15),
            width: double.infinity,
            height: 50,
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(10),
                  hintText: "Search By Title",
                  prefixIcon: const Icon(
                    Icons.search,
                  ),
                  // focusedBorder: OutlineInputBorder(
                  //     borderSide:
                  //         const BorderSide(color: Colors.white, width: 0.6),
                  //     borderRadius: BorderRadius.circular(10)),
                  // enabledBorder: OutlineInputBorder(
                  //     borderSide:
                  //         const BorderSide(color: Colors.white, width: 0.6),
                  //     borderRadius: BorderRadius.circular(10)),
                  // border: OutlineInputBorder(
                  //     borderSide:
                  //         const BorderSide(color: Colors.white, width: 0.6),
                  //     borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
          ),
          elevation: 0.0,
          bottom: TabBar(
            indicatorWeight: 1.0,
            indicatorSize: TabBarIndicatorSize.label,
            isScrollable: true,
            tabs: [
              Tab(
                text: "Action",
              ),
              Tab(
                text: "Material Art",
              ),
              Tab(
                text: "Time Travel,Another World",
              ),
            ],
          ),
        ),
        body: const TabBarView(children: [
          GenerieListView(),
          GenerieListView(),
          GenerieListView(),
        ]),
      ),
    );
  }
}

class GenerieListView extends StatelessWidget {
  const GenerieListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        GeneryItemWIdget(
          image: "assets/images/animeone.jpeg",
        ),
        Divider(
          color: Colors.white,
          thickness: 0.8,
          indent: 15.0,
          endIndent: 15.0,
        ),
        GeneryItemWIdget(
          image: "assets/images/animetwo.jpeg",
        ),
        Divider(
          color: Colors.white,
          thickness: 0.8,
          indent: 15.0,
          endIndent: 15.0,
        ),
        GeneryItemWIdget(
          image: "assets/images/animethree.jpeg",
        ),
        Divider(
          color: Colors.white,
          thickness: 0.8,
          indent: 15.0,
          endIndent: 15.0,
        ),
        GeneryItemWIdget(
          image: "assets/images/animefour.jpeg",
        ),
        Divider(
          color: Colors.white,
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
          children: [
            const Text("Demon Slayer", style: TextStyle(fontSize: 16)),
            const SizedBox(height: 5),
            Row(
              children: const [
                Text("Season 1",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                SizedBox(
                  width: 5,
                ),
                Text("Ep 2",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 14,
                        fontWeight: FontWeight.w400)),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(15)),
              child: const Text(
                "Action",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                icon: const Icon(
                  Icons.arrow_right_alt_outlined,
                  color: Colors.black,
                ),
                label: const Text(
                  "Read",
                  style: TextStyle(color: Colors.black),
                ))
          ],
        )
      ],
    );
  }
}
