import 'package:flutter/material.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Favourite",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.emoji_emotions,
              color: Colors.red,
              size: 100,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "You currently don't have \n any Favourite Movies",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.red,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
