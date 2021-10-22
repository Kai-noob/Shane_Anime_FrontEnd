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
        const TabBar(
          indicatorColor: Colors.red,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorWeight: 1.0,
          tabs: [
            Tab(
              text: "Review",
            ),
            Tab(
              text: "Chapters",
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
