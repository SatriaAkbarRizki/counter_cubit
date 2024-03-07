abstract class CounterState {
  final int number;

  CounterState(this.number);
}

class InitCounterState extends CounterState {
  InitCounterState(super.number);
}

class CounterIncrement extends CounterState {
  CounterIncrement(super.number);
}

class CounterDecrement extends CounterState {
  CounterDecrement(super.number);
}
