import 'package:flutter/material.dart';

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
            Navigator.of(context).pop();
          },
        ),
        title: const Text("Editor's Choice"),
      ),
      body: GridView.builder(
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
              const Text("Demon Slayer",
                  style: TextStyle(color: Colors.white, fontSize: 16)),
              const SizedBox(height: 5),
            ],
          );
        },
      ),
    );
  }
}
