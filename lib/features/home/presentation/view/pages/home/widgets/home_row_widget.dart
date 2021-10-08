import 'package:flutter/material.dart';

import 'home_row_item.dart';

class HomeRowWidget extends StatelessWidget {
  final String image1;
  final String label1;
  final String image2;
  final String label2;
  const HomeRowWidget({
    Key? key,
    required this.image1,
    required this.label1,
    required this.image2,
    required this.label2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        HomeRowItem(image: image1, label: label1),
        HomeRowItem(image: image2, label: label2),
      ],
    );
  }
}
