part of 'comic_details_bloc.dart';

@freezed
class ComicDetailsEvent with _$ComicDetailsEvent {
  const factory ComicDetailsEvent.getComicDetais(String comicId) =
      GetComicsDetails;
}
