part of 'counter_bloc.dart';

abstract class CounterEvent extends Equatable {
  const CounterEvent();

  @override
  List<Object> get props => [];
}

class Increment extends CounterEvent {
  final int amount;

  const Increment({this.amount = 1});

  @override
  List<Object> get props => [amount];
}
