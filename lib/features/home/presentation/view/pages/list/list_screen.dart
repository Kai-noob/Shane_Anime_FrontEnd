import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/core/global/image_widget.dart';
import 'package:movie_app/core/global/loading_indicator.dart';
import 'package:movie_app/features/home/presentation/controllers/complete_controller.dart';
import 'package:movie_app/features/home/presentation/controllers/hot_controller.dart';
import 'package:movie_app/features/home/presentation/controllers/recent_controller.dart';

class CompleteAllComicView extends StatelessWidget {
  final CompleteController _completeController = Get.find<CompleteController>();
  CompleteAllComicView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0.0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Get.back();
            },
          ),
          title: const Text("Completed Series"),
        ),
        body: Obx(() {
          if (_completeController.isLoading) {
            return const LoadingIndicator();
          }
          return ListView.builder(
            itemCount: _completeController.completeComicList.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        height: 200,
                        width: MediaQuery.of(context).size.width * 0.45,
                        child: ImageWidget(
                          image: _completeController
                              .completeComicList[index].coverPhoto,
                        )),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                _completeController
                                    .completeComicList[index].title,
                                style: const TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w800)),
                            Text(
                              "Comedy,Action",
                              style: TextStyle(fontSize: 15),
                            ),
                            Text(
                              "Episodes- 28",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                  ],
                ),
              );
            },
          );
        }));
  }
}

class HotAllComicView extends StatelessWidget {
  final HotController _hotController = Get.find<HotController>();
  HotAllComicView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0.0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Get.back();
            },
          ),
          title: const Text("Hot Mangas"),
        ),
        body: Obx(() {
          if (_hotController.isLoading) {
            return const LoadingIndicator();
          }
          return ListView.builder(
            itemCount: _hotController.hotAllComicList.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        height: 200,
                        width: MediaQuery.of(context).size.width * 0.45,
                        child: ImageWidget(
                          image:
                              _hotController.hotAllComicList[index].coverPhoto,
                        )),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(_hotController.hotAllComicList[index].title,
                                style: const TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w800)),
                            Text(
                              "Comedy,Action",
                              style: TextStyle(fontSize: 15),
                            ),
                            Text(
                              "Episodes- 28",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                  ],
                ),
              );
            },
          );
        }));
  }
}

class RecentAllComicView extends StatelessWidget {
  final RecentController _recentController = Get.find<RecentController>();
  RecentAllComicView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Get.back();
            },
          ),
          title: const Text("Daily Update"),
        ),
        body: Obx(() {
          if (_recentController.isLoading) {
            return const LoadingIndicator();
          }
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 0.8),
            itemCount: _recentController.recentAllComicList.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  SizedBox(
                      height: 150,
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: ImageWidget(
                        image: _recentController
                            .recentAllComicList[index].coverPhoto,
                      )),
                  Text(_recentController.recentAllComicList[index].title,
                      style: const TextStyle(fontSize: 16)),
                  const SizedBox(height: 5),
                ],
              );
            },
          );
        }));
  }
}
