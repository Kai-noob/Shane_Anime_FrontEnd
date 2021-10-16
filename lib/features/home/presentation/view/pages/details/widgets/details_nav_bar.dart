import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:movie_app/core/strings/strings.dart';
import 'package:movie_app/core/theme/themes.dart';

class DetailsNavBar extends StatelessWidget {
  final String image;
  const DetailsNavBar({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Color(0xfffa411b)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.thumb_up_alt_rounded,
              color: Colors.white,
              size: 28,
            ),
          ),
          IconButton(
            onPressed: () {
              showMaterialModalBottomSheet(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15))),
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                        height: MediaQuery.of(context).size.height * 0.8,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 4,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Comments",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                            Expanded(
                              child: ListView.builder(
                                itemCount: 50,
                                itemBuilder: (BuildContext context, int index) {
                                  return ListTile(
                                    leading: CircleAvatar(
                                        backgroundImage: AssetImage(image5)),
                                    title: Text("Nice Commic . Good Job Bro"),
                                    subtitle: Row(
                                      children: [
                                        Icon(
                                          Icons.subdirectory_arrow_right,
                                          color: Colors.grey,
                                        ),
                                        Text("Nay Yair Linn"),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ));
                  });
            },
            icon: const Icon(
              Ionicons.chatbox_ellipses_outline,
              color: Colors.white,
              size: 28,
            ),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.white, shape: const StadiumBorder()),
              onPressed: () {},
              child: const Text("Continue Reading"))
        ],
      ),
    );
  }
}
