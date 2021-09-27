import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'genries_event.dart';
part 'genries_state.dart';

class GenriesBloc extends Bloc<GenriesEvent, GenriesState> {
  GenriesBloc() : super(GenriesInitial());
  @override
  Stream<GenriesState> mapEventToState(
    GenriesEvent event,
  ) async* {}
}
