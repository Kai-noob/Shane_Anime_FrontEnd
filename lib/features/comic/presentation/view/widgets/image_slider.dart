import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageCarouselWidget extends StatefulWidget {
  const ImageCarouselWidget({
    Key? key,
    required this.images,
  }) : super(key: key);

  final List images;

  @override
  State<ImageCarouselWidget> createState() => _ImageCarouselWidgetState();
}

class _ImageCarouselWidgetState extends State<ImageCarouselWidget> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        itemCount: widget.images.length,
        itemBuilder: (BuildContext context, int index, int pageViewIndex) {
          return Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(widget.images[index]))),
          );
        },
        options: CarouselOptions(
          viewportFraction: 0.9,
          initialPage: 0,
          aspectRatio: 2.0,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
        ));
  }
}
