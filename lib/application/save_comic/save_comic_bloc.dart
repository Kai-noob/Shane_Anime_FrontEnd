import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domain/comic/comic_failure.dart';
import '../../domain/save_comic/i_save_comic_repository.dart';
import '../../domain/save_comic/save_comic.dart';

part 'save_comic_event.dart';
part 'save_comic_state.dart';
part 'save_comic_bloc.freezed.dart';

@injectable
class SaveComicBloc extends Bloc<SaveComicEvent, SaveComicState> {
  final ISaveComicRepository _saveComicRepo;

  StreamSubscription<Either<ComicFailure, List<SaveComics>>>? saveComicsStream;

  SaveComicBloc(this._saveComicRepo) : super(const SaveComicState.initial()) {
    on<SaveComicEvent>(_onEvent);
  }

  Future _onEvent(SaveComicEvent event, Emitter<SaveComicState> emit) async {
    await event.map(saveComic: (e) async {
      await _saveComicRepo.saveComic(e.comicId);
      // emit(failureOrSuccess.fold((l) => SaveComicState.error(l),
      //     (_) => SaveComicState.createSuccess()));
    }, removeComic: (e) async {
      await _saveComicRepo.removeComic(e.comicId);
      // emit(failureOrSuccess.fold((l) => SaveComicState.error(l),
      //     (_) => SaveComicState.deleteSuccess()));
    }, watchSaved: (e) async {
      await saveComicsStream?.cancel();
      saveComicsStream =
          _saveComicRepo.watchSaveComics().listen((failureOrComics) => add(
                SaveComicEvent.savedComicsReceived(failureOrComics),
              ));
    }, savedComicsReceived: (e) async {
      emit(e.failureOrComics.fold((l) => SaveComicState.error(l),
          (saveComics) => SaveComicState.watchSuccess(saveComics)));
    });
  }

  @override
  Future<void> close() async {
    await saveComicsStream?.cancel();
    return super.close();
  }
}
