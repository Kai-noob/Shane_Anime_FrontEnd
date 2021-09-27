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
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
          ),
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          bottom: TabBar(
            indicatorWeight: 1.0,
            indicatorSize: TabBarIndicatorSize.label,
            isScrollable: true,
            labelColor: Colors.black,
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
        body: TabBarView(children: [
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
      children: [
        GeneryItemWIdget(
          image: "assets/images/animeone.jpeg",
        ),
        Divider(
          color: Colors.black,
          thickness: 0.8,
          indent: 15.0,
          endIndent: 15.0,
        ),
        GeneryItemWIdget(
          image: "assets/images/animetwo.jpeg",
        ),
        Divider(
          color: Colors.black,
          thickness: 0.8,
          indent: 15.0,
          endIndent: 15.0,
        ),
        GeneryItemWIdget(
          image: "assets/images/animethree.jpeg",
        ),
        Divider(
          color: Colors.black,
          thickness: 0.8,
          indent: 15.0,
          endIndent: 15.0,
        ),
        GeneryItemWIdget(
          image: "assets/images/animefour.jpeg",
        ),
        Divider(
          color: Colors.black,
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
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          height: 150,
          width: MediaQuery.of(context).size.width * 0.45,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image:
                  DecorationImage(fit: BoxFit.cover, image: AssetImage(image))),
        ),
        Column(
          children: [
            const Text("Demon Slayer",
                style: TextStyle(color: Colors.black, fontSize: 16)),
            const SizedBox(height: 5),
            Row(
              children: [
                Text("Season 1",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500)),
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
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(15)),
              child: Text(
                "Action",
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                icon: Icon(Icons.arrow_right_alt_outlined),
                label: Text("Watch"))
          ],
        )
      ],
    );
  }
}
