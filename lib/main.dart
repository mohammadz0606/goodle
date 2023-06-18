import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:goodly/helper/colors.dart';
import 'package:goodly/screens/home.dart';
import 'package:goodly/services/notifications.dart';

import 'screens/how_its_work.dart';
import 'screens/privacy.dart';
import 'screens/splash.dart';
import 'screens/status_day.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  /*GoogleFonts.pacifico();
  GoogleFonts.montserrat();*/
  _setPreferredOrientations();
  _setSystemUIOverlayStyle();
  _initNotifications();
  runApp(const Goodle());
}

void _setSystemUIOverlayStyle() {
  return SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      /*systemNavigationBarColor: AppColors.red,
      systemNavigationBarDividerColor: AppColors.white,*/
      statusBarBrightness: Brightness.dark,
    ),
  );
}

Future<void> _setPreferredOrientations() {
  return SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );
}


Future<void> _initNotifications() async {
  NotificationServices notificationServices = NotificationServices();
  notificationServices.initNotification();
  return notificationServices.scheduleNotificationPeriodically();
}

class Goodle extends StatelessWidget {
  const Goodle({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          themeMode: ThemeMode.light,
          debugShowCheckedModeBanner: false,
          title: 'Goodle',
          theme: ThemeData.light().copyWith(
            textTheme: const TextTheme(
              titleLarge: TextStyle(
                fontFamily: 'Pacifico',
              ),
              bodyLarge: TextStyle(
                fontFamily: 'Montserrat',
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            useMaterial3: true,
            scaffoldBackgroundColor: AppColors.white,
            appBarTheme: const AppBarTheme(
              iconTheme: IconThemeData(color: AppColors.black),
              elevation: 0,
              centerTitle: true,
              backgroundColor: AppColors.white,
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: AppColors.transparent,
                statusBarBrightness: Brightness.dark,
                statusBarIconBrightness: Brightness.dark,
                /*systemNavigationBarColor: AppColors.red,
                systemNavigationBarDividerColor: AppColors.white,*/
              ),
            ),
          ),
          initialRoute: SplashScreen.route,
          routes: {
            SplashScreen.route: (context) => const SplashScreen(),
            HomeScreen.route: (context) => const HomeScreen(),
            HowItsWorkScreen.route: (context) => const HowItsWorkScreen(),
            PrivacyScreen.route: (context) => const PrivacyScreen(),
            StatusDayScreen.route:(context) => const StatusDayScreen(),
          },
        );
      },
    );
  }
}
