import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/features/home/domain/entities/comic.dart';
import 'package:movie_app/features/home/domain/usecases/get_recent_usecase.dart';

part 'recent_event.dart';
part 'recent_state.dart';

class RecentBloc extends Bloc<RecentEvent, RecentState> {
  final GetRecentComicUseCase _getRecentComicUseCase;
  RecentBloc(this._getRecentComicUseCase) : super(RecentInitial());

  @override
  Stream<RecentState> mapEventToState(RecentEvent event) async* {
    if (event is FetchRecentComic) {
      yield RecentLoading();
      final failureOrSuccess = await _getRecentComicUseCase.call();
      // final failureOrSuccess2 = await _getRecentComic.call();

      yield* _eitherSuccessOrErrorState(failureOrSuccess);
    }
  }

  Stream<RecentState> _eitherSuccessOrErrorState(
    Either<Failure, List<Comic>> failureOrSuccess,
  ) async* {
    yield failureOrSuccess.fold(
      (failure) => RecentError(message: failure.errorMessage),
      (recentComics) => RecentLoaded(recentComics: recentComics),
    );
  }
}
