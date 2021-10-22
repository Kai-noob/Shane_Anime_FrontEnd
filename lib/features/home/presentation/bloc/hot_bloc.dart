import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import '../../../../core/error/failure.dart';
import '../../domain/entities/comic.dart';
import '../../domain/usecases/get_hot_comic_usecase.dart';

part 'hot_event.dart';
part 'hot_state.dart';

const String serverFailure = "Something went wrong";

class HotBloc extends Bloc<HotEvent, HotState> {
  final GetHotComicUseCase _getHotComicUseCase;
  HotBloc(this._getHotComicUseCase) : super(HotComicLoading());

  @override
  Stream<HotState> mapEventToState(HotEvent event) async* {
    if (event is FetchHotComic) {
      yield HotComicLoading();
      final failureOrSuccess = await _getHotComicUseCase.call();

      yield* _eitherSuccessOrErrorState(failureOrSuccess);
    }
  }

  Stream<HotState> _eitherSuccessOrErrorState(
    Either<Failure, List<Comic>> failureOrSuccess,
  ) async* {
    yield failureOrSuccess.fold(
      (failure) => HotComicError(message: _mapFailureToMessage(failure)),
      (hotComics) => HotComicLoaded(hotComics: hotComics),
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
