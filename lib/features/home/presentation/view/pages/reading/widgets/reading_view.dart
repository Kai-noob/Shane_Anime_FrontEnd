import 'package:advance_pdf_viewer_fork/advance_pdf_viewer_fork.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/global/error_message.dart';

import '../../../../../domain/entities/episodes.dart';

import '../../../../bloc/details/details_bloc.dart';

import '../../../../../../../core/global/loading_indicator.dart';

import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

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
        if (state is PdfLoaded) {}
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
