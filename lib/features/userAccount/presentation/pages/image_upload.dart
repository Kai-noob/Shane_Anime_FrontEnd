import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:movie_app/features/userAccount/presentation/pages/user_form_page.dart';

class ImageUpload extends StatelessWidget {
  final String userName;
  final String email;
  const ImageUpload({Key? key, required this.userName, required this.email})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose Profile"),
        elevation: 0.0,
      ),
      body: GridView.builder(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 20,
            childAspectRatio: 0.9,
            crossAxisSpacing: 20,
            crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset("assets/images/manga.jpg"));
        },
        itemCount: 10,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red.shade400,
        onPressed: () {},
        child: Icon(Ionicons.arrow_forward),
      ),
      // bottomNavigationBar: Container(
      //   child: ElevatedButton(
      //     style: ElevatedButton.styleFrom(
      //         shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.only(
      //                 topLeft: Radius.circular(15),
      //                 topRight: Radius.circular(15))),
      //         primary: Color(0xfffa411b).withOpacity(0.9)),
      //     onPressed: () {
      //       Navigator.of(context).push(MaterialPageRoute(
      //           builder: (BuildContext context) => UserFormPage()));
      //     },
      //     child: Text(
      //       "Next",
      //       style: TextStyle(color: Colors.white, fontSize: 25),
      //     ),
      //   ),
      // ),
    );
  }
}
