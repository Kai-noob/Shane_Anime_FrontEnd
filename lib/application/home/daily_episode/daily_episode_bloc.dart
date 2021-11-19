import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily_episode_event.dart';
part 'daily_episode_state.dart';
part 'daily_episode_bloc.freezed.dart';

class DailyEpisodeBloc extends Bloc<DailyEpisodeEvent, DailyEpisodeState> {
  DailyEpisodeBloc() : super(const _Initial()) {
    on<DailyEpisodeEvent>((event, emit) {});
  }
}
