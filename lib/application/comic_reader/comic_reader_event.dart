part of 'comic_reader_bloc.dart';

@freezed
class ComicReaderEvent with _$ComicReaderEvent {
  const factory ComicReaderEvent.checkPdf(
      String comicId, String episodeName, int episodeNumber) = _CheckPdf;
  const factory ComicReaderEvent.changePdf(
      String comicId, String episodeName, int episodeNumber) = _ChangePdf;
}
