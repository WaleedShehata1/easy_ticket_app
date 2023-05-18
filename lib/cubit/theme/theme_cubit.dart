import 'package:bloc/bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';
import 'package:easy_ticket_app/widget/components.dart';
part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial());
  bool _isDark = darkMode.getData(key: 'darkMode') ?? false;
  bool get isDark => _isDark;
  void changeTheme() {
    _isDark = !_isDark;
    darkMode.putData(key: 'darkMode', value: _isDark);
    emit(ThemeChange());
  }
}
