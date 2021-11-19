import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/domain/comic/comic.dart';
import 'package:movie_app/domain/comic/comic_failure.dart';
import 'package:movie_app/domain/comic/i_comic_repository.dart';

part 'complete_comiccomic_event.dart';
part 'complete_comic_state.dart';
part 'complete_comic_bloc.freezed.dart';

@injectable
class CompleteComicBloc extends Bloc<CompleteComicEvent, CompleteComicState> {
  final IComicRepository _comicRepo;
  CompleteComicBloc(this._comicRepo)
      : super(const CompleteComicState.loading()) {
    on<GetCompleteComics>(_getCompleteComics);
  }

  void _getCompleteComics(
      GetCompleteComics event, Emitter<CompleteComicState> emit) async {
    final Either<ComicFailure, List<Comic>> failureOrSuccess =
        await _comicRepo.getCompleteComics();
    emit(failureOrSuccess.fold((l) => const CompleteComicState.error(),
        (r) => CompleteComicState.loaded(r)));
  }

  // @override
  // Stream<CompleteComicState> mapEventToState(CompleteComicEvent event) async* {
  //   yield* event.map(getCompleteComics: (e) async* {
  //     final Either<ComicFailure, List<Comic>> failureOrSuccess =
  //         await _comicRepo.getCompleteComics();

  //     yield failureOrSuccess.fold((l) => const CompleteComicState.error(),
  //         (r) => CompleteComicState.loaded(r));
  //   });
  // }
}
