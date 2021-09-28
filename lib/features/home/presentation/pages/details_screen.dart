import 'package:flutter/material.dart';
import 'package:movie_app/configs/strings/strings.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        // appBar: AppBar(
        //   title: const Text("Demon Slayer"),
        //   centerTitle: true,

        // ),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 200,
              floating: true,
              pinned: true,
              title: Text(
                "DemonSlayer",
                style: TextStyle(color: Colors.black),
              ),
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios_new),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  image5,
                  fit: BoxFit.fitHeight,
                ),
              ),
              bottom: TabBar(
                indicatorColor: Colors.deepOrangeAccent,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 1.5,
                tabs: [
                  Tab(
                    text: "Review",
                  ),
                  Tab(
                    text: "Episodes",
                  ),
                ],
              ),
            ),
            SliverFillRemaining(
              child: TabBarView(
                children: [
                  Column(children: []),
                  ListView.builder(
                      itemCount: 30,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          leading: Icon(
                            Icons.menu_book_outlined,
                            color: Colors.deepOrangeAccent,
                          ),
                          title: Text("Chapter",
                              style: TextStyle(color: Colors.white)),
                        );
                      })
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
