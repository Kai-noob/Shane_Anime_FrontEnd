import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:movie_app/configs/strings/strings.dart';
import 'package:photo_view/photo_view.dart';

class ReadingScreen extends StatefulWidget {
  const ReadingScreen({Key? key}) : super(key: key);

  @override
  State<ReadingScreen> createState() => _ReadingScreenState();
}

class _ReadingScreenState extends State<ReadingScreen> {
  @override
  void initState() {
    super.initState();
    currentPage = 0;
  }

  final pageController = PageController();

  late int currentPage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("DemonSlayer"),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Get.back();
            },
          ),
        ),
        bottomNavigationBar: Container(
          height: 50,
          width: double.infinity,
          color: Colors.deepOrangeAccent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  pageController.previousPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.linearToEaseOut);
                },
                icon: const Icon(Icons.arrow_upward_outlined),
              ),
              const SizedBox(
                width: 15,
              ),
              Text("$currentPage/${images.length}"),
              const SizedBox(
                width: 15,
              ),
              IconButton(
                  onPressed: () {
                    pageController.nextPage(
                        duration: const Duration(milliseconds: 2000),
                        curve: Curves.linearToEaseOut);
                  },
                  icon: const Icon(
                    Icons.arrow_downward_outlined,
                  ))
            ],
          ),
        ),
        body: PageView.builder(
            onPageChanged: (index) {
              setState(() {
                currentPage = pageController.page!.round();
              });
            },
            controller: pageController,
            scrollDirection: Axis.vertical,
            itemCount: 20,
            itemBuilder: (BuildContext context, int index) {
              return PhotoView(
                customSize: MediaQuery.of(context).size,
                imageProvider: AssetImage(images[index]),
              );
            }));
  }

  // void _goToNextPage() {
  //   if (currentPage == 20 - 1) {
  //     _goToNextChapter();
  //   }
  // }
}
