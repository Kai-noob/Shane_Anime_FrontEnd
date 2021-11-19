import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/domain/comic/comic.dart';
import 'package:movie_app/domain/comic/comic_failure.dart';
import 'package:movie_app/domain/comic/i_comic_repository.dart';

part 'comic_details_event.dart';
part 'comic_details_state.dart';
part 'comic_details_bloc.freezed.dart';

@injectable
class ComicDetailsBloc extends Bloc<ComicDetailsEvent, ComicDetailsState> {
  final IComicRepository _comicRepo;
  ComicDetailsBloc(this._comicRepo) : super(const ComicDetailsState.loading()) {
    on<GetComicsDetails>(_getComicDetails);
  }

  void _getComicDetails(
      GetComicsDetails event, Emitter<ComicDetailsState> emit) async {
    final Either<ComicFailure, Comic> failureOrSuccess =
        await _comicRepo.getComicDetails(event.comicId);
    emit(failureOrSuccess.fold((l) => const ComicDetailsState.error(),
        (r) => ComicDetailsState.loaded(r)));
  }
}
