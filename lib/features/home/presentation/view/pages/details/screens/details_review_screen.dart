import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import '../../../../../domain/entities/comic.dart';

class DetailsReviewScreen extends StatelessWidget {
  final Comic comicModel;
  const DetailsReviewScreen({Key? key, required this.comicModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Ionicons.close_circle_outline,
                        size: 30,
                      )),
                ),
              ),
              Container(
                height: 250,
                width: 230,
                child: CachedNetworkImage(
                  imageUrl: comicModel.coverPhoto,
                  fit: BoxFit.fitHeight,
                  placeholder: (context, url) => Container(
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage("assets/logo/logo.png")),
                        color: Colors.grey.shade200),
                  ),
                  errorWidget: (context, url, error) =>
                      const Icon(Ionicons.warning_outline, size: 35),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Wrap(
                spacing: 15,
                runSpacing: 15,
                children: comicModel.genres
                    .map((e) => Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 2),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border:
                                  Border.all(color: Colors.white, width: 1.3)),
                          child: Text(
                            e.name,
                            style: const TextStyle(fontSize: 13),
                          ),
                        ))
                    .toList(),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                comicModel.review,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Presented By Shane Manga",
                style: TextStyle(color: Colors.grey, fontSize: 18),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
