import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movie_app/core/strings/constants.dart';
import 'package:movie_app/features/home/domain/usecases/filter_episodes_usecase.dart';
import '../../../domain/entities/episodes.dart';

import '../../../../../core/error/failure.dart';
import '../../../domain/usecases/get_recent_episode_usecase.dart';

part 'recent_event.dart';
part 'recent_state.dart';

class RecentBloc extends Bloc<RecentEvent, RecentState> {
  final GetRecentEpisodeUseCase _getRecentComicUseCase;
  final FilterEpisodeUseCase _filterEpisodeUseCase;
  RecentBloc(this._getRecentComicUseCase, this._filterEpisodeUseCase)
      : super(RecentLoading());

  @override
  Stream<RecentState> mapEventToState(RecentEvent event) async* {
    if (event is FetchRecentEpisode) {
      yield RecentLoading();
      final failureOrSuccess = await _getRecentComicUseCase.call();
      yield* _eitherSuccessOrErrorState(failureOrSuccess);
    }
    if (event is FilterEpisode) {
      yield FilterLoading();
      final failureOrSuccess = await _filterEpisodeUseCase.call(event.dateTime);
      yield* _eitherFilteredEpisodesOrErrorState(failureOrSuccess);
    }
  }

  Stream<RecentState> _eitherSuccessOrErrorState(
    Either<Failure, List<Episode>> failureOrSuccess,
  ) async* {
    yield failureOrSuccess.fold(
      (failure) => RecentError(message: _mapFailureToMessage(failure)),
      (recentEpisodes) => RecentLoaded(recentEpisodes: recentEpisodes),
    );
  }

  Stream<RecentState> _eitherFilteredEpisodesOrErrorState(
    Either<Failure, List<Episode>> failureOrSuccess,
  ) async* {
    yield failureOrSuccess.fold(
      (failure) => FilterError(message: _mapFailureToMessage(failure)),
      (filterEpisodes) =>
          FilteredEpisodesLoaded(filterEpisodes: filterEpisodes),
    );
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return serverMessage;
      default:
        return 'Unexpected Error';
    }
  }
}
