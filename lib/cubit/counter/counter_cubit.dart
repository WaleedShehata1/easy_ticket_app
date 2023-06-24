import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_states.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(CounterInitialState());

  static CounterCubit get(context) => BlocProvider.of(context);
  // int ticketPrice = CacheHelper.getData(key: 'metroTicket');
  int counter = 1;
  increment() {
    counter++;
    // ticketPrice = ticketPrice * counter;
    emit(CounterIncrementState(counter));
  }

  decrement() {
    if (counter > 1) {
      counter--;
    }
    // ticketPrice = ticketPrice * counter;
    emit(CounterDecrementState(counter));
    // emit(Price(ticketPrice));
  }
}
