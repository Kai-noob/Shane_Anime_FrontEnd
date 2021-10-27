import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movie_app/core/strings/constants.dart';
import 'package:movie_app/features/home/domain/usecases/get_limit_hot_comic.dart';
import '../../../../../core/error/failure.dart';
import '../../../domain/entities/comic.dart';
import '../../../domain/usecases/get_all_hot_comic.dart';

part 'hot_event.dart';
part 'hot_state.dart';

class HotBloc extends Bloc<HotEvent, HotState> {
  final GetHotComic _getHotComicUseCase;
  final GetLimitHotComic _getLimitHotComic;
  HotBloc(this._getHotComicUseCase, this._getLimitHotComic)
      : super(HotLimitComicLoading());

  @override
  Stream<HotState> mapEventToState(HotEvent event) async* {
    if (event is FetchAllHotComic) {
      yield HotAllComicLoading();
      final failureOrSuccess = await _getHotComicUseCase.call();

      yield* _eitherAllComicOrErrorState(failureOrSuccess);
    }
    if (event is FetchLimitHotComic) {
      yield HotLimitComicLoading();
      final failureOrSuccess = await _getLimitHotComic.call();

      yield* _eitherLimitComicOrErrorState(failureOrSuccess);
    }
  }

  Stream<HotState> _eitherAllComicOrErrorState(
    Either<Failure, List<Comic>> failureOrSuccess,
  ) async* {
    yield failureOrSuccess.fold(
      (failure) => HotAllComicError(message: _mapFailureToMessage(failure)),
      (hotComics) => HotAllComicLoaded(hotComics: hotComics),
    );
  }

  Stream<HotState> _eitherLimitComicOrErrorState(
    Either<Failure, List<Comic>> failureOrSuccess,
  ) async* {
    yield failureOrSuccess.fold(
      (failure) => HotLimitComicError(message: _mapFailureToMessage(failure)),
      (hotComics) => HotLimitComicLoaded(hotComics: hotComics),
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
