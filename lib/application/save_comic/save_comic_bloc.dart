import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/domain/comic/comic_failure.dart';
import 'package:movie_app/domain/save_comic/i_save_comic_repository.dart';
import 'package:movie_app/domain/save_comic/save_comic.dart';

part 'save_comic_event.dart';
part 'save_comic_state.dart';
part 'save_comic_bloc.freezed.dart';

@injectable
class SaveComicBloc extends Bloc<SaveComicEvent, SaveComicState> {
  final ISaveComicRepository _saveComicRepo;

  StreamSubscription<Either<ComicFailure, List<SaveComics>>>? saveComicsStream;

  SaveComicBloc(this._saveComicRepo) : super(const _Initial()) {
    on<SaveComic>(_saveComic);
    on<RemoveComic>(_removeComic);
    on<WatchSaved>(_watchSaved);
    on<SavedComicsReceived>(_savedComicsReceived);
  }

  void _saveComic(SaveComic event, Emitter<SaveComicState> emit) async {
    emit(const SaveComicState.loading());
    final failureOrSuccess = await _saveComicRepo.saveComic(event.comicId);
    emit(failureOrSuccess.fold(
        (l) => SaveComicState.error(l), (_) => SaveComicState.createSuccess()));
  }

  void _removeComic(RemoveComic event, Emitter<SaveComicState> emit) async {
    emit(const SaveComicState.loading());
    final failureOrSuccess = await _saveComicRepo.removeComic(event.comicId);
    emit(failureOrSuccess.fold(
        (l) => SaveComicState.error(l), (_) => SaveComicState.deleteSuccess()));
  }

  Future<void> _watchSaved(
      WatchSaved event, Emitter<SaveComicState> emit) async {
    emit(const SaveComicState.loading());

    await saveComicsStream?.cancel();
    saveComicsStream =
        _saveComicRepo.watchSaveComics().listen((failureOrComics) => add(
              SaveComicEvent.savedComicsReceived(failureOrComics),
            ));
  }

  void _savedComicsReceived(
      SavedComicsReceived event, Emitter<SaveComicState> emit) async {
    emit(event.failureOrComics.fold(
        (l) => SaveComicState.error(l), (r) => SaveComicState.watchSuccess(r)));
  }

  @override
  Future<void> close() async {
    await saveComicsStream?.cancel();
    return super.close();
  }
}
