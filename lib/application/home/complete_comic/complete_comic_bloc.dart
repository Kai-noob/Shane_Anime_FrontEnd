import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../domain/comic/comic.dart';
import '../../../domain/comic/comic_failure.dart';
import '../../../domain/comic/i_comic_repository.dart';

part 'complete_comiccomic_event.dart';
part 'complete_comic_state.dart';
part 'complete_comic_bloc.freezed.dart';

@injectable
class CompleteComicBloc extends Bloc<CompleteComicEvent, CompleteComicState> {
  final IComicRepository _comicRepo;
  CompleteComicBloc(this._comicRepo)
      : super(const CompleteComicState.loading()) {
    on<CompleteComicEvent>(_completeComicEvent);
  }
  Future<void> _completeComicEvent(
      CompleteComicEvent event, Emitter<CompleteComicState> emit) async {
    await event.map(getMoreCompletedComics: (e) async {
      final Either<ComicFailure, List<Comic>> failureOrSuccess =
          await _comicRepo.getMoreCompletedComics();
      emit(failureOrSuccess.fold((l) => CompleteComicState.error(l),
          (r) => CompleteComicState.loaded(r)));
    }, getHomeCompletedComics: (e) async {
      final Either<ComicFailure, List<Comic>> failureOrSuccess =
          await _comicRepo.getHomeCompletedComics();
      emit(failureOrSuccess.fold((l) => CompleteComicState.error(l),
          (r) => CompleteComicState.loaded(r)));
    });
  }
}
