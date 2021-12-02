import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../domain/comic/comic.dart';
import '../../../domain/comic/comic_failure.dart';
import '../../../domain/comic/i_comic_repository.dart';

part 'all_comics_event.dart';
part 'all_comics_state.dart';
part 'all_comics_bloc.freezed.dart';

@injectable
class AllComicsBloc extends Bloc<AllComicsEvent, AllComicsState> {
  final IComicRepository _comicRepo;
  AllComicsBloc(this._comicRepo) : super(const AllComicsState.loading()) {
    on<AllComicsEvent>(_getAllComics);
  }

  Future<void> _getAllComics(
      AllComicsEvent event, Emitter<AllComicsState> emit) async {
    await event.map(getMoreAllComics: (e) async {
      final Either<ComicFailure, List<Comic>> failureOrSuccess =
          await _comicRepo.getMoreAllComics();
      emit(failureOrSuccess.fold((l) => const AllComicsState.error(),
          (r) => AllComicsState.loaded(r)));
    }, getHomeAllComics: (e) async {
      final Either<ComicFailure, List<Comic>> failureOrSuccess =
          await _comicRepo.getHomeAllComics();
      emit(failureOrSuccess.fold((l) => const AllComicsState.error(),
          (r) => AllComicsState.loaded(r)));
    });
  }
}
