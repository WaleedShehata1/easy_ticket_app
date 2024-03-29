// ignore_for_file: equal_keys_in_map, avoid_print

import 'package:easy_ticket_app/cubit/app/app_cubit.dart';
import 'package:easy_ticket_app/cubit/theme/theme_cubit.dart';
import 'package:easy_ticket_app/network/local/dio_helper.dart';
import 'package:easy_ticket_app/view/screen/faqs.dart';
import 'package:easy_ticket_app/widget/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc_observer.dart';
import 'cubit/app/app_state.dart';
import 'cubit/metro/metro_cubit.dart';
import 'view/screen/bottom_bar.dart';
import 'view/screen/notifications.dart';
import 'view/screen/payment_method.dart';
import 'view/screen/sign_up.dart';
import 'view/screen/edit_profile.dart';
import 'view/screen/get_password_reset_code.dart';
import 'view/screen/home.dart';
import 'view/screen/onBoard.dart';
import 'view/screen/profile.dart';
import 'view/screen/sign_in.dart';
import 'view/screen/splash.dart';
import 'widget/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widget/constants.dart';
import 'view/screen/wallet_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  await CacheHelper.init();
  token = CacheHelper.getData(key: 'token');
  print(token);
  runApp(
    const MyApp(),
  );
  Bloc.observer = MyBlocObserver();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => AppCubit()
                ..getMetroTicet()
                ..bus,
            ),
            BlocProvider(
                create: (context) => MetroCubit()
                  ..getMetroTicet()
                  ..ticket
                  ..getMetroLineStations()
                  ..metroLine_station
                  ..metroTiming()
                  ..metro_timing),
            BlocProvider(
              create: (context) => ThemeCubit()..isDark,
            ),
          ],
          child: BlocConsumer<AppCubit, AppState>(
            listener: (context, state) {},
            builder: (context, state) {
              ThemeCubit theme =
                  BlocProvider.of<ThemeCubit>(context, listen: true);
              AppCubit bus = BlocProvider.of<AppCubit>(context, listen: false);
              print(bus);
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                theme:
                    theme.isDark ? ThemeClass.darkTheme : ThemeClass.lightTheme,
                home: child,
                routes: {
                  splash.routeName: (context) => const splash(),
                  onBoard.routeName: (context) => const onBoard(),
                  Sign_In.routeName: (context) => Sign_In(),
                  SignUp.routeName: (context) => SignUp(),
                  BottomBar.routeName: (context) => const BottomBar(),
                  HomeScreen.routeName: (context) => const HomeScreen(),
                  UserSettingsScreen.routeName: (context) =>
                      const UserSettingsScreen(),
                  EditProfileScreen.routeName: (context) => EditProfileScreen(),
                  GetPasswordResetCode.routeName: (context) =>
                      const GetPasswordResetCode(),
                  NotificationsScreen.routeName: (context) =>
                      NotificationsScreen(),
                  PaymentMethodScreen.routeName: (context) =>
                      const PaymentMethodScreen(),
                  WalletProfile.routeName: (context) => WalletProfile(),
                  BottomBar.routeName: (context) => const BottomBar(),
                  FAQScreen.routeName: (context) => const FAQScreen(),
                },
              );
            },
          ),
        );
      },
      child: const splash(),
    );
  }
}
