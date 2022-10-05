import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    on<CounterEvent>((event, emit) {
      if (state is CounterInitial) {
        emit(const CounterRunning(0));
      } else {
        if (event is Increment) {
          emit(CounterRunning((state as CounterRunning).number + event.amount));
        }
      }
    });

    // on<Increment>((event, emit) {
    //   // TODO: implement event handler
    // });

    // on<Decrement>((event, emit) {
    //   // TODO: implement event handler
    // });
  }
}
