import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/features/home/domain/entities/comic.dart';
import 'package:movie_app/features/home/domain/entities/episodes.dart';
import 'package:movie_app/features/home/domain/usecases/get_episodes_usecase.dart';

part 'details_event.dart';
part 'details_state.dart';

class DetailsBloc extends Bloc<DetailsEvent, DetailsState> {
  final GetEpisodesUseCase _getEpisodesUseCase;
  DetailsBloc(this._getEpisodesUseCase) : super(DetailsInitial());

  @override
  Stream<DetailsState> mapEventToState(DetailsEvent event) async* {
    if (event is FetchEpisode) {
      yield DetailsLoading();
      final failureOrSuccess = await _getEpisodesUseCase.call(event.comicId);
      yield* _eitherSuccessOrErrorState(failureOrSuccess);
    }
  }

  Stream<DetailsState> _eitherSuccessOrErrorState(
    Either<Failure, List<Episodes>> failureOrSuccess,
  ) async* {
    yield failureOrSuccess.fold(
      (failure) => DetailsError(message: failure.errorMessage),
      (episodes) => DetailsLoaded(episodes: episodes),
    );
  }
}
