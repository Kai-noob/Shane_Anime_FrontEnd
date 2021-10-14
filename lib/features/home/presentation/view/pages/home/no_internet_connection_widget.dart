import 'package:flutter/material.dart';
import '../../../../../../core/global/loading_indicator.dart';

class NoInternetConnection extends StatelessWidget {
  const NoInternetConnection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            LoadingIndicator(),
            SizedBox(
              height: 30,
            ),
            Text(
              "Please check your internet connection..",
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
