part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {
  final int amount;
  const CounterEvent(this.amount);
}

class Add extends CounterEvent {
  const Add(int amount) : super(amount);
}

class Subtract extends CounterEvent {
  const Subtract(int amount) : super(amount);
}
