import 'package:bloc/bloc.dart';
import 'event.dart';


class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(1) {
    on<CounterIncremented>((event, emit) {
      if (state < 20) {
        emit(state + 1);
      }
    });

    on<CounterDecremented>((event, emit) {
      if (state > 1) {
        emit(state - 1);
      }
    });
  }
}