part of 'comic_details_bloc.dart';

@freezed
class ComicDetailsState with _$ComicDetailsState {
  const factory ComicDetailsState.loading() = _Loading;
  const factory ComicDetailsState.loaded(Comic comic) = _Loaded;
  const factory ComicDetailsState.error(ComicFailure failure) = _Error;
}
