import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../model/my_ticket.dart';
import '../../network/local/dio_helper.dart';
import '../../network/remote/end_points.dart';
import '../../widget/components.dart';

part 'my_ticket_state.dart';

class MyTicketCubit extends Cubit<MyTicketState> {
  MyTicketCubit() : super(MyTicketInitial());
  static MyTicketCubit get(context) => BlocProvider.of(context);

  /// show my ticket
  showTicketModel? myTicket;
  getMyTicketData() {
    emit(LoadingState());
    String? user_ID = CacheHelper.getData(key: 'id');
    DioHelper.postData(url: showTicket, data: {"user_id": int.parse(user_ID!)})
        .then((value) {
      myTicket = showTicketModel.fromJson(value.data);

      print("tic${value.data}");

      emit(showTicketSuccessState(myTicket));
    }).catchError((error) {
      print("error==== ${error.toString()}");
      emit(showTicketErrorState(error.toString()));
    });
  }
}
