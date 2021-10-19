import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/features/home/domain/entities/comic.dart';
import 'package:movie_app/features/home/domain/usecases/get_hot_comic_usecase.dart';

part 'hot_event.dart';
part 'hot_state.dart';

class HotBloc extends Bloc<HotEvent, HotState> {
  final GetHotComicUseCase _getHotComicUseCase;
  HotBloc(this._getHotComicUseCase) : super(HotInitial());

  @override
  Stream<HotState> mapEventToState(HotEvent event) async* {
    if (event is FetchHotComic) {
      yield HotComicLoading();
      final failureOrSuccess = await _getHotComicUseCase.call();
      // final failureOrSuccess2 = await _getRecentComic.call();

      yield* _eitherSuccessOrErrorState(failureOrSuccess);
    }
  }

  Stream<HotState> _eitherSuccessOrErrorState(
    Either<Failure, List<Comic>> failureOrSuccess,
  ) async* {
    yield failureOrSuccess.fold(
      (failure) => HotComicError(message: failure.errorMessage),
      (hotComics) => HotComicLoaded(hotComics: hotComics),
    );
  }
}
