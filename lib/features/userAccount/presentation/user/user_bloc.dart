import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/features/userAccount/data/models/user_model.dart';
import 'package:movie_app/features/userAccount/domain/entities/user.dart';
import 'package:movie_app/features/userAccount/domain/usecases/get_user_usecase.dart';

part 'user_event.dart';
part 'user_state.dart';

const String serverFailureMessage = "Server Error";

class UserBloc extends Bloc<UserEvent, UserState> {
  final GetUserUseCase _getUserUseCase;
  UserBloc(this._getUserUseCase) : super(UserInitial());

  @override
  Stream<UserState> mapEventToState(UserEvent event) async* {
    if (event is FetchUserProfileData) {
      yield UserProfileLoading();
      final failureOrSuccess = await _getUserUseCase.call();
      yield* _eitherUserOrErrorState(failureOrSuccess);
    }
  }

  Stream<UserState> _eitherUserOrErrorState(
      Either<Failure, UserEntity> failureOrSuccess) async* {
    yield failureOrSuccess.fold(
        (failure) => UserProfileError(message: _mapFailureToMessage(failure)),
        (user) => UserProfileSuccess(user: user));
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return serverFailureMessage;

      default:
        return 'Unexpected Error';
    }
  }
}
