import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

import '../../../../../../../core/global/error_message.dart';
import '../../../../../../../core/global/loading_indicator.dart';
import '../../../../../../../core/global/pdf_transform.dart';
import '../../../../../domain/entities/episodes.dart';
import '../../../../bloc/details/details_bloc.dart';

class ReadingView extends StatefulWidget {
  const ReadingView({
    Key? key,
    required this.episodes,
  }) : super(key: key);

  final Episode episodes;

  @override
  State<ReadingView> createState() => _ReadingViewState();
}

class _ReadingViewState extends State<ReadingView> {
  @override
  void initState() {
    super.initState();
  }

  Future<String> loadPDf(String url) async {
    final file = await PDFApi.loadNetwork(url);
    return file.path;
  }

  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailsBloc, DetailsState>(
      builder: (context, state) {
        if (state is PdfError) {
          return ErrorMessage(message: state.message, isSliver: false);
        }
        if (state is PDFLoading) {
          return const LoadingIndicator();
        }
        if (state is PdfLoaded) {
          return FutureBuilder<String>(
              future: loadPDf(state.pdf),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const LoadingIndicator();
                }
                if (snapshot.hasError) {
                  return const ErrorMessage(
                      message: "Something wrong.", isSliver: false);
                }
                if (snapshot.hasData) {
                  return Scaffold(
                      floatingActionButton: FloatingActionButton(
                        elevation: 0.0,
                        backgroundColor: Colors.red,
                        onPressed: () {
                          setState(() {
                            isDarkMode = !isDarkMode;
                          });
                        },
                        child: Icon(
                          isDarkMode ? Icons.light_mode : Icons.dark_mode,
                          color: Colors.white,
                        ),
                      ),
                      body: PDFView(
                          filePath: snapshot.data, nightMode: isDarkMode));
                }
                return const SizedBox();
              });
        }
        if (state is ImagesLoading) {
          return const LoadingIndicator();
        }
        if (state is ImagesError) {
          return ErrorMessage(message: state.message, isSliver: false);
        }
        if (state is ImagesLoaded) {
          return PhotoViewGallery.builder(
              scrollDirection: Axis.vertical,
              itemCount: state.images.length,
              loadingBuilder: (BuildContext context, ImageChunkEvent? event) {
                return const Center(
                  child: LoadingIndicator(),
                );
              },
              builder: (BuildContext context, int index) {
                return PhotoViewGalleryPageOptions(
                    tightMode: false,
                    errorBuilder: (
                      BuildContext context,
                      Object error,
                      StackTrace? stackTrace,
                    ) {
                      return const Center(
                          child: Center(
                        child: Text("Something Went Wrong"),
                      ));
                    },
                    initialScale: PhotoViewComputedScale.contained,
                    minScale: PhotoViewComputedScale.contained,
                    maxScale: PhotoViewComputedScale.contained * 4,
                    imageProvider: NetworkImage(state.images[index]));
              });
        }
        return Container();
      },
    );
  }
}
