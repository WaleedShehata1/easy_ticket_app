import 'package:bloc/bloc.dart';
import 'package:easy_ticket_app/network/local/dio_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../model/metro.dart';
import '../../network/remote/end_points.dart';

part 'metro_state.dart';

class MetroCubit extends Cubit<MetroState> {
  MetroCubit() : super(MetroInitial());
  static MetroCubit get(context) => BlocProvider.of(context);

  MetroTicket? ticket;
  void getMetroTicet() {
    emit(MetroLoading());
    DioHelper.getDataTicket(url: metro_ticket).then((value) {
      ticket = MetroTicket.fromJson(value.data);
      print(ticket!.ticket);
      final Pattern = RegExp(',{1.800}');
      Pattern.allMatches("${value}").forEach(
        (element) => print(element.group(1)),
      );
      emit(MetroSuccess(ticket));
    }).catchError((error) {
      print('error ticket metro = ${error.toString()}');
      emit(MetroError(error));
    });
  }

  metroData? metroLine_station;
  void getMetroLineStations() {
    emit(MetroLoading());
    DioHelper.getDataTicket(url: metro_line_station).then((value) {
      metroLine_station = metroData.fromJson(value.data);
      print('metroLine=${value.data}');
      emit(MetroLineSuccess(metroLine_station));
    }).catchError((error) {
      print('metro line_stations= ${error.toString()}');
      emit(MetroLineError(error.toString()));
    });
  }
}
