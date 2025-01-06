import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'doa_event.dart';
part 'doa_state.dart';

class DoaBloc extends Bloc<DoaEvent, DoaState> {
  DoaBloc() : super(DoaInitial()) {
    on<DoaEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
