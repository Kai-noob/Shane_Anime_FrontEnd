import 'package:freezed_annotation/freezed_annotation.dart';

part 'comic_failure.freezed.dart';

@freezed
class ComicFailure with _$ComicFailure {
  const factory ComicFailure.unexcepted() = _Unexcepted;
  const factory ComicFailure.notFound() = _NotFound;
}
