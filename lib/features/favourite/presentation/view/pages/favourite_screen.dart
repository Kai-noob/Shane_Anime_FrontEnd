import 'package:flutter/material.dart';

import '../../../../../core/global/image_widget.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Favourite"),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: CustomScrollView(slivers: []));
  }
}
