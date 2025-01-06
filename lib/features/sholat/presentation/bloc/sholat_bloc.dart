import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'sholat_event.dart';
part 'sholat_state.dart';

class SholatBloc extends Bloc<SholatEvent, SholatState> {
  SholatBloc() : super(SholatInitial()) {
    on<SholatEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
