import 'package:flutter/material.dart';

import 'detial_sliver_delegate.dart';

class DetailsTabBar extends StatelessWidget {
  const DetailsTabBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      delegate: SliverAppBarDelegate(
        TabBar(
          // indicatorColor: Colors.deepPurpleAccent,
          // indicatorSize: TabBarIndicatorSize.label,
          // indicatorWeight: 1.0,
          tabs: [
            Tab(
              child: Container(
                decoration:
                    BoxDecoration(color: Color(0xfffa411b).withOpacity(0.6)),
                child: Text("Review"),
              ),
            ),
            Tab(
              child: Container(
                child: Text("Chapters"),
              ),
            ),
            // Tab(text: "Review"),
            // Tab(text: "Chapters"),
          ],
        ),
      ),
      // pinned: true,
    );
  }
}
