import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movie_app/features/home/domain/entities/episodes.dart';

import '../../../../core/error/failure.dart';
import '../../domain/entities/comic.dart';
import '../../domain/usecases/get_recent_usecase.dart';

part 'recent_event.dart';
part 'recent_state.dart';

const String serverFailure = "Something went wrong";

class RecentBloc extends Bloc<RecentEvent, RecentState> {
  final GetRecentComicUseCase _getRecentComicUseCase;
  RecentBloc(this._getRecentComicUseCase) : super(RecentLoading());

  @override
  Stream<RecentState> mapEventToState(RecentEvent event) async* {
    if (event is FetchRecentEpisode) {
      yield RecentLoading();
      final failureOrSuccess = await _getRecentComicUseCase.call();
      // final failureOrSuccess2 = await _getRecentComic.call();

      yield* _eitherSuccessOrErrorState(failureOrSuccess);
    }
  }

  Stream<RecentState> _eitherSuccessOrErrorState(
    Either<Failure, List<RecentEpisode>> failureOrSuccess,
  ) async* {
    yield failureOrSuccess.fold(
      (failure) => RecentError(message: _mapFailureToMessage(failure)),
      (recentEpisodes) => RecentLoaded(recentEpisodes: recentEpisodes),
    );
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return serverFailure;
      default:
        return 'Unexpected Error';
    }
  }
}
