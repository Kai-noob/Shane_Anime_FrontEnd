part of 'comic_reader_bloc.dart';

@freezed
class ComicReaderEvent with _$ComicReaderEvent {
  const factory ComicReaderEvent.getPdf(
      String comicId, String episodeName, int episodeNumber) = GetPdf;
}
