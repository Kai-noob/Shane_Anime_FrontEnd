import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/core/global/image_widget.dart';
import 'package:movie_app/core/global/loading_indicator.dart';
import 'package:movie_app/features/home/domain/entities/comic.dart';
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
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Get.back();
            },
          ),
          title: Text("Completed Series"),
        ),
        body: Obx(() {
          if (_completeController.isLoading) {
            return LoadingIndicator();
          }
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 0.8),
            itemCount: _completeController.allCompleteComicList.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: ImageWidget(
                        image: _completeController
                            .allCompleteComicList[index].coverPhoto,
                      )),
                  Text(_completeController.allCompleteComicList[index].title,
                      style: TextStyle(fontSize: 16)),
                  const SizedBox(height: 5),
                ],
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
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Get.back();
            },
          ),
          title: Text("Hot Mangas"),
        ),
        body: Obx(() {
          if (_hotController.isLoading) {
            return LoadingIndicator();
          }
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 0.8),
            itemCount: _hotController.hotAllComicList.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: ImageWidget(
                        image: _hotController.hotAllComicList[index].coverPhoto,
                      )),
                  Text(_hotController.hotAllComicList[index].title,
                      style: TextStyle(fontSize: 16)),
                  const SizedBox(height: 5),
                ],
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
          title: Text("Daily Update"),
        ),
        body: Obx(() {
          if (_recentController.isLoading) {
            return LoadingIndicator();
          }
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 0.8),
            itemCount: _recentController.recentAllComicList.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: ImageWidget(
                        image: _recentController
                            .recentAllComicList[index].coverPhoto,
                      )),
                  Text(_recentController.recentAllComicList[index].title,
                      style: TextStyle(fontSize: 16)),
                  const SizedBox(height: 5),
                ],
              );
            },
          );
        }));
  }
}
