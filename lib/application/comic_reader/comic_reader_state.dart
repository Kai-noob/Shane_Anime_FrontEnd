part of 'comic_reader_bloc.dart';

@freezed
class ComicReaderState with _$ComicReaderState {
  const factory ComicReaderState.loading() = _Loading;
  const factory ComicReaderState.pdfLoaded(Episodes pdf) = _Pdfloaded;
  const factory ComicReaderState.driveLoaded(Episodes pdf) = _DriveLoaded;
  const factory ComicReaderState.error() = _Error;
  const factory ComicReaderState.chgEpisodeSuccess(Episodes episodes) =
      _ChgEpisodeSuccess;
}
