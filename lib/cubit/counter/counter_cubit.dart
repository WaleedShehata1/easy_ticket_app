import 'package:easy_ticket_app/network/remote/end_points.dart';
import 'package:easy_ticket_app/widget/components.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_states.dart';
import 'package:easy_ticket_app/screen/home.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(CounterInitialState());

  static CounterCubit get(context) => BlocProvider.of(context);
  double ticketPrice = CacheHelper.getData(key: 'metroTicket');
  int counter = 1;
  increment() {
    counter++;
    emit(CounterIncrementState(counter));
    ticketPrice = ticketPrice * counter;
  }

  decrement() {
    if (counter > 1) counter--;
    emit(CounterDecrementState(counter));
    ticketPrice = ticketPrice * counter;
  }
}
