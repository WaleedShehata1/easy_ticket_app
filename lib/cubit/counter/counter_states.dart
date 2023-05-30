abstract class CounterStates {}

class CounterInitialState extends CounterStates {}

class CounterIncrementState extends CounterStates {
  final int counter;
  CounterIncrementState(this.counter);
}

class CounterDecrementState extends CounterStates {
  final int counter;
  CounterDecrementState(this.counter);
}

class Price extends CounterStates {
  final double ticketPrice;
  Price(this.ticketPrice);
}
