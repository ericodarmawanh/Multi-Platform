import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState(0)) {
    on<Increment>((event, emit) {
      emit(CounterState(state.number + 1));
    });

    on<Decrement>((event, emit) {
      emit(CounterState(state.number - 1));
    });

    on<Reset>((event, emit) {
      emit(const CounterState(0));
    });
  }
}
