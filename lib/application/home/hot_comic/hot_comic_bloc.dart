import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../domain/comic/comic.dart';
import '../../../domain/comic/comic_failure.dart';
import '../../../domain/comic/i_comic_repository.dart';

part 'hot_comic_event.dart';
part 'hot_comic_state.dart';
part 'hot_comic_bloc.freezed.dart';

@injectable
class HotComicBloc extends Bloc<HotComicEvent, HotComicState> {
  final IComicRepository _comicRepo;
  HotComicBloc(this._comicRepo) : super(const HotComicState.loading()) {
    on<HotComicEvent>(_getHotComics);
  }

  Future<void> _getHotComics(
      HotComicEvent event, Emitter<HotComicState> emit) async {
    await event.map(getMoreHotComics: (e) async {
      final Either<ComicFailure, List<Comic>> failureOrSuccess =
          await _comicRepo.getMoreHotComics();
      emit(failureOrSuccess.fold(
          (l) => HotComicState.error(l), (r) => HotComicState.loaded(r)));
    }, getHomeHotComics: (e) async {
      emit(HotComicState.loading());
      final Either<ComicFailure, List<Comic>> failureOrSuccess =
          await _comicRepo.getHomeHotComics();
      emit(failureOrSuccess.fold((l) {
        print(l);
        return HotComicState.error(l);
      }, (r) {
        print("Right ${r.length}");
        return HotComicState.loaded(r);
      }));
    });
  }
}
