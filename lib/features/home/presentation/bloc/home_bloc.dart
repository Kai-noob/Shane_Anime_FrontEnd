import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/features/home/domain/entities/comic.dart';
import 'package:movie_app/features/home/domain/usecases/get_completed_comic_usecase.dart';
import 'package:movie_app/features/home/domain/usecases/get_hot_comic_usecase.dart';
import 'package:movie_app/features/home/domain/usecases/get_recent_usecase.dart';
import 'package:movie_app/features/userAccount/domain/entities/user.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetCompletedComicUseCase _getCompleteComic;

  HomeBloc(this._getCompleteComic) : super(HomeInitial());

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    if (event is CompleteComicFetch) {
      yield HomeLoading();
      final failureOrSuccess = await _getCompleteComic.call();
      // final failureOrSuccess2 = await _getRecentComic.call();

      yield* _eitherSuccessOrErrorState(failureOrSuccess);
    }
  }

  Stream<HomeState> _eitherSuccessOrErrorState(
    Either<Failure, List<Comic>> failureOrSuccess,
  ) async* {
    yield failureOrSuccess.fold(
      (failure) => HomeError(message: failure.errorMessage),
      (completeComics) => HomeLoaded(completeComics: completeComics),
    );
  }
}
