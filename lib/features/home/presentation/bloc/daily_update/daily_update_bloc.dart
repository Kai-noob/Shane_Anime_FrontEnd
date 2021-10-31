import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import '../../../domain/usecases/get_limit_recent_episode.dart';
import '../../../../../core/strings/constants.dart';
import '../../../domain/entities/episodes.dart';

import '../../../../../core/error/failure.dart';

part 'daily_update_event.dart';
part 'daily_update_state.dart';

class DailyUpdateBloc extends Bloc<DailyUpdateEvent, DailyUpdateState> {
  final GetLimitRecentEpisodes _getRecentComicUseCase;

  DailyUpdateBloc(this._getRecentComicUseCase) : super(DailyUpdateLoading());

  @override
  Stream<DailyUpdateState> mapEventToState(DailyUpdateEvent event) async* {
    if (event is FetchDailyEpisode) {
      yield DailyUpdateLoading();
      final failureOrSuccess = await _getRecentComicUseCase.call();
      yield* _eitherSuccessOrErrorState(failureOrSuccess);
    }
  }

  Stream<DailyUpdateState> _eitherSuccessOrErrorState(
    Either<Failure, List<Episode>> failureOrSuccess,
  ) async* {
    yield failureOrSuccess.fold(
      (failure) => DailyUpdateError(message: _mapFailureToMessage(failure)),
      (recentEpisodes) => DailyUpdateSuccess(recentEpisodes: recentEpisodes),
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
