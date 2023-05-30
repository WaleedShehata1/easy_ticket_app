// ignore_for_file: constant_identifier_names

import 'package:easy_ticket_app/cubit/metro/metro_cubit.dart';

import '../../widget/components.dart';

const login = 'login';
final uid = CacheHelper.getData(key: 'uid');
String show = 'show/$uid';
const register = 'register';
const logout = 'logout';
String update = 'updateprofile/$uid';
const emailverification = 'emailverification';
const search_account = 'password/forget-password';
const send_otp_forgotPassword = 'password/reset';
const create_password = 'password/resetpassword';
const update_password = 'password/updata';
const charge_wallet = 'charge-wallet';
const metro_ticket = 'tickets';
const metro_line_station = 'Metro_lineAndStatione';
const metroTimes = 'metroAndTiming';
