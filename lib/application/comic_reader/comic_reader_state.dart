part of 'comic_reader_bloc.dart';

@freezed
class ComicReaderState with _$ComicReaderState {
  const factory ComicReaderState.loading() = _Loading;
  const factory ComicReaderState.loaded(String pdf) = _Loaded;
  const factory ComicReaderState.error() = _Error;
}
