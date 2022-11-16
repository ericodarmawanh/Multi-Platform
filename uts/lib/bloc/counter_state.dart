part of 'counter_bloc.dart';

class CounterState extends Equatable {
  final int number;

  const CounterState(this.number);

  @override
  List<Object> get props => [number];
}
