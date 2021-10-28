import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import '../../../../../core/error/failure.dart';
import '../../../../../core/strings/constants.dart';
import '../../../domain/entities/episodes.dart';
import '../../../domain/usecases/filter_episode.dart';

part 'filterepisode_event.dart';
part 'filterepisode_state.dart';

class FilterepisodeBloc extends Bloc<FilterepisodeEvent, FilterepisodeState> {
  final FilterEpisodeUseCase _filterEpisodeUseCase;
  FilterepisodeBloc(this._filterEpisodeUseCase) : super(FilterepisodeInitial());

  @override
  Stream<FilterepisodeState> mapEventToState(FilterepisodeEvent event) async* {
    if (event is FilterEpisode) {
      final failureOrSuccess = await _filterEpisodeUseCase.call(event.dateTime);
      yield* _eitherFilteredEpisodesOrErrorState(failureOrSuccess);
    }
  }

  Stream<FilterepisodeState> _eitherFilteredEpisodesOrErrorState(
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
