import 'package:flutter/material.dart';
import 'components/save_screen.dart';
import 'components/user_comments_screen.dart';

import 'components/sliver_delegate.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: NestedScrollView(
          physics: const ClampingScrollPhysics(),
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              const SliverAppBar(
                pinned: true,
                floating: true,
                elevation: 0.0,
                title: Text(
                  "Library",
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.white),
                ),
              ),
              SliverPersistentHeader(
                delegate: SliverAppBarDelegate(
                  const TabBar(
                    isScrollable: true,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorColor: Colors.white,
                    tabs: [
                      Tab(
                        text: "Saved",
                      ),
                      Tab(
                        text: "My Comments",
                      ),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: const TabBarView(
            children: [SaveScreen(), UserCommentsScreen()],
          ),
        ),
      ),
    );
  }
}
