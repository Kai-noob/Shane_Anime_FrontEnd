import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/domain/comic/comic.dart';
import 'package:movie_app/domain/comic/comic_failure.dart';
import 'package:movie_app/domain/comic/i_comic_repository.dart';

part 'hot_comic_event.dart';
part 'hot_comic_state.dart';
part 'hot_comic_bloc.freezed.dart';

@injectable
class HotComicBloc extends Bloc<HotComicEvent, HotComicState> {
  final IComicRepository _comicRepo;
  HotComicBloc(this._comicRepo) : super(const HotComicState.loading()) {
    on<GetHotComics>(_getHotComics);
  }

  void _getHotComics(GetHotComics event, Emitter<HotComicState> emit) async {
    final Either<ComicFailure, List<Comic>> failureOrSuccess =
        await _comicRepo.getHotComics();
    emit(failureOrSuccess.fold(
        (l) => const HotComicState.error(), (r) => HotComicState.loaded(r)));
  }
}
