import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domain/comic/comic_failure.dart';
import '../../domain/comic/i_comic_repository.dart';
import '../../domain/episodes/episodes.dart';

part 'episodes_event.dart';
part 'episodes_state.dart';
part 'episodes_bloc.freezed.dart';

@injectable
class EpisodesBloc extends Bloc<EpisodesEvent, EpisodesState> {
  final IComicRepository _comiRepo;
  EpisodesBloc(this._comiRepo) : super(const EpisodesState.loading()) {
    on<EpisodesEvent>(_episodesEvent);
  }

  Future<void> _episodesEvent(
      EpisodesEvent event, Emitter<EpisodesState> emit) async {
    await event.map(getEpisodes: (e) async {
      emit(const EpisodesState.loading());
      final failureOrSuccess = await _comiRepo.getDailyEpisodes();
      emit(failureOrSuccess.fold(
          (l) => EpisodesState.error(l), (r) => EpisodesState.loaded(r)));
    }, getEpisode: (e) async {
      emit(const EpisodesState.loading());
      final failureOrSuccess = await _comiRepo.getEpisode(e.episodeId);
      emit(failureOrSuccess.fold((l) => EpisodesState.error(l),
          (r) => EpisodesState.episodeLoaded(r)));
    }, getLatestEpisodes: (e) async {
      emit(const EpisodesState.loading());
      final failureOrSuccess = await _comiRepo.getLatestEpisode(e.comicId);
      emit(failureOrSuccess.fold(
          (l) => EpisodesState.error(l), (r) => EpisodesState.loaded(r)));
    });
  }
}
