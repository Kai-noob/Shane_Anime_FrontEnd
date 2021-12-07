import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domain/comic/comic.dart';
import '../../domain/comic/comic_failure.dart';
import '../../domain/comic/i_comic_repository.dart';

part 'comic_details_event.dart';
part 'comic_details_state.dart';
part 'comic_details_bloc.freezed.dart';

@injectable
class ComicDetailsBloc extends Bloc<ComicDetailsEvent, ComicDetailsState> {
  final IComicRepository _comicRepo;
  ComicDetailsBloc(this._comicRepo) : super(const ComicDetailsState.loading()) {
    on<ComicDetailsEvent>(_getComicDetails);
  }

  Future<void> _getComicDetails(
      ComicDetailsEvent event, Emitter<ComicDetailsState> emit) async {
    await event.map(getComicDetais: (e) async {
      emit(const ComicDetailsState.loading());
      final Either<ComicFailure, Comic> failureOrSuccess =
          await _comicRepo.getComicDetails(e.comicId);
      emit(failureOrSuccess.fold((l) => ComicDetailsState.error(l),
          (r) => ComicDetailsState.loaded(r)));
    });
  }
}
