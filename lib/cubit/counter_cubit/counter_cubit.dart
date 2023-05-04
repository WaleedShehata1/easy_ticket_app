import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

import 'counter_states.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(CounterInitialState());

  static CounterCubit get(context) => BlocProvider.of(context);

  int counter = 1;
}
