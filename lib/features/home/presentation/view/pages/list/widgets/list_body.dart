import 'package:flutter/material.dart';

class ListBody extends StatelessWidget {
  const ListBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: 12,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width * 0.45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/animeone.jpeg"))),
            ),
            const Text("Demon Slayer", style: TextStyle(fontSize: 16)),
            const SizedBox(height: 5),
          ],
        );
      },
    );
  }
}
