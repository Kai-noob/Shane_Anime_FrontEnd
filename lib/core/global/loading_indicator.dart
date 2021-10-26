import 'package:flutter/material.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Transform.scale(
      scale: 0.7,
      child: CircularProgressIndicator(
          strokeWidth: 2.0, backgroundColor: Colors.black, color: Colors.white),
    ));
  }
}
