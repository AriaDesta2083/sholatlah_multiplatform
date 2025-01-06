import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'dzikir_event.dart';
part 'dzikir_state.dart';

class DzikirBloc extends Bloc<DzikirEvent, DzikirState> {
  DzikirBloc() : super(DzikirInitial()) {
    on<DzikirEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
