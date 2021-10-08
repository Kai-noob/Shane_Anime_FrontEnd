import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({Key? key}) : super(key: key);

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
        title: const Text("Editor's Choice"),
      ),
      body: ListBody(),
    );
  }
}
