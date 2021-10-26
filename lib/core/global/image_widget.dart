import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: image,
      imageBuilder: (context, imageProvider) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.cover,
          ),
        ),
      ),
      placeholder: (context, url) => Container(
        decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage("assets/logo/logo.png")),
            color: Colors.grey.shade100),
      ),
      errorWidget: (context, url, error) =>
          const Icon(Ionicons.warning_outline, size: 35),
    );
  }
}
