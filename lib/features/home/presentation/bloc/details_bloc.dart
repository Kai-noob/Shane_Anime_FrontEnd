import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movie_app/features/home/domain/entities/photos.dart';
import 'package:movie_app/features/home/domain/usecases/get_phoots_usecase.dart';
import 'package:movie_app/features/home/presentation/view/pages/details/widgets/details_tab_bar.dart';
import '../../../../core/error/failure.dart';
import '../../domain/entities/episodes.dart';
import '../../domain/usecases/get_episodes_usecase.dart';

part 'details_event.dart';
part 'details_state.dart';

const String serverFailure = "Something went wrong";

class DetailsBloc extends Bloc<DetailsEvent, DetailsState> {
  final GetEpisodesUseCase _getEpisodesUseCase;
  final GetPhotosUseCase _getPhotosUseCase;
  DetailsBloc(this._getEpisodesUseCase, this._getPhotosUseCase)
      : super(DetailsInitial());

  @override
  Stream<DetailsState> mapEventToState(DetailsEvent event) async* {
    if (event is FetchEpisode) {
      yield EpisodeLoading();
      final failureOrSuccess = await _getEpisodesUseCase.call(event.comicId);
      yield* _eitherEpisodesOrErrorState(failureOrSuccess);
    }
    if (event is FetchImages) {
      yield ImagesLoading();
      final failureOrSuccess =
          await _getPhotosUseCase.call(event.comicId, event.episodeName);
      yield* _eitherImagesOrErrorState(failureOrSuccess);
    }
  }

  Stream<DetailsState> _eitherEpisodesOrErrorState(
    Either<Failure, List<Episodes>> failureOrSuccess,
  ) async* {
    yield failureOrSuccess.fold(
      (failure) => EpisodeError(message: _mapFailureToMessage(failure)),
      (episodes) => EpisodeLoaded(episodes: episodes),
    );
  }

  Stream<DetailsState> _eitherImagesOrErrorState(
    Either<Failure, List<String>> failureOrSuccess,
  ) async* {
    yield failureOrSuccess.fold(
      (failure) => ImagesError(message: _mapFailureToMessage(failure)),
      (images) => ImagesLoaded(images: images),
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
