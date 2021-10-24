import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/features/home/domain/entities/episodes.dart';

import 'package:movie_app/features/home/presentation/bloc/details_bloc.dart';

import '../../../../../../../core/global/loading_indicator.dart';

import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class ReadingView extends StatelessWidget {
  const ReadingView({
    Key? key,
    required this.episodes,
  }) : super(key: key);

  final RecentEpisode episodes;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailsBloc, DetailsState>(
      builder: (context, state) {
        if (state is PdfError) {}
        if (state is PdfLoaded) {
          // PdfView(
          //   controller:PdfController(
          //     document: state.pdf
          //   ),

          //   pageBuilder: (
          //     Future<PdfPageImage> pageImage,
          //     int index,
          //     PdfDocument document,
          //   ) =>
          //       PhotoViewGalleryPageOptions(
          //     imageProvider: PdfPageImageProvider(
          //       pageImage,
          //       index,
          //       document.id,
          //     ),
          //     minScale: PhotoViewComputedScale.contained * 1,
          //     maxScale: PhotoViewComputedScale.contained * 3.0,
          //     initialScale: PhotoViewComputedScale.contained * 1.0,
          //     heroAttributes:
          //         PhotoViewHeroAttributes(tag: '${document.id}-$index'),
          //   ),
          // );
          return SfPdfViewer.network(state.pdf);
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
