import 'package:easy_ticket_app/cubit/theme/theme_cubit.dart';
import 'package:easy_ticket_app/network/local/dio_helper.dart';
import 'package:easy_ticket_app/widget/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc_observer.dart';
import 'screen/bottom_bar.dart';

import 'screen/notifications.dart';
import 'screen/payment_method.dart';
import 'screen/sign_up.dart';
import 'screen/edit_profile.dart';
import 'screen/get_password_reset_code.dart';
import 'screen/home.dart';
import 'screen/onBoard.dart';
import 'screen/profile.dart';
import 'screen/sign_in.dart';
import 'screen/splash.dart';
import 'widget/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'screen/wallet_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  await CacheHelper.init();
  runApp(
    MultiBlocProvider(providers: [
      BlocProvider(
        create: (coontext) => ThemeCubit(),
      )
    ], child: const MyApp()),
  );
  Bloc.observer = MyBlocObserver();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeCubit theme = BlocProvider.of<ThemeCubit>(context, listen: true);
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: theme.isDark ? ThemeClass.darkTheme : ThemeClass.lightTheme,
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
            EditProfileScreen.routeName: (context) => const EditProfileScreen(),
            GetPasswordResetCode.routeName: (context) =>
                const GetPasswordResetCode(),
            NotificationsScreen.routeName: (context) => NotificationsScreen(),
            PaymentMethodScreen.routeName: (context) =>
                const PaymentMethodScreen(),
            WalletProfile.routeName: (context) => WalletProfile(),
            BottomBar.routeName: (context) => const BottomBar(),
          },
        );
      },
      child: const splash(),
    );
  }
}
