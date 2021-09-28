import 'package:flutter/material.dart';
import 'package:movie_app/features/home/presentation/widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text.rich(
          TextSpan(
              text: "Shane",
              style: TextStyle(color: Colors.white),
              children: [
                TextSpan(
                    text: "Manga",
                    style: TextStyle(color: Colors.deepOrangeAccent))
              ]),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
      ),
      body: HomeBody(),
    );
  }
}
