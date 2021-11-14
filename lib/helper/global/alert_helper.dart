import 'package:flutter/material.dart';

class AlertHelper {
  void showCustomAlert(BuildContext context, String text,
      VoidCallback cancleFunction, VoidCallback confirmFuction) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Container(
              child: TextField(
                decoration: InputDecoration(hintText: "Enter Your New Name"),
              ),
            ),
            actions: [
              TextButton(onPressed: () {}, child: Text("Cancle")),
              TextButton(onPressed: () {}, child: Text("Update"))
            ],
          );
        });
  }
}
