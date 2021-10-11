import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../core/strings/strings.dart';
import 'widgets/reading_nav_bar.dart';

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
      bottomNavigationBar: ReadingNavBar(
          pageController: pageController, currentPage: currentPage),
      body: buildReadingBody(),
    );
  }

  PageView buildReadingBody() {
    return PageView.builder(
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
      },
    );
  }
}
