import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domain/upcoming_comic/i_upcoming_comic_repo.dart';
import '../../domain/upcoming_comic/upcoming_comic.dart';
part 'upcoming_comic_event.dart';
part 'upcoming_comic_state.dart';
part 'upcoming_comic_bloc.freezed.dart';

@injectable
class UpcomingComicBloc extends Bloc<UpcomingComicEvent, UpcomingComicState> {
  final IUpcomingComicRepo _upcomingComicRepo;
  UpcomingComicBloc(this._upcomingComicRepo)
      : super(const UpcomingComicState.loading()) {
    on<UpcomingComicEvent>(_upcomingComicEvent);
  }

  Future<void> _upcomingComicEvent(
      UpcomingComicEvent event, Emitter<UpcomingComicState> emit) async {
    emit(const UpcomingComicState.loading());
    final failureOrSuccess = await _upcomingComicRepo.getUpcomingComics();
    emit(failureOrSuccess.fold((l) => const UpcomingComicState.error(),
        (r) => UpcomingComicState.loaded(r)));
  }
}
