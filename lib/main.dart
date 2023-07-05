import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:goodly/helper/colors.dart';
import 'package:goodly/screens/home.dart';
import 'package:goodly/services/notifications.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'screens/how_its_work.dart';
import 'screens/privacy.dart';
import 'screens/splash.dart';
import 'screens/status_day.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _initializeFirebaseApp();
  _setPreferredOrientations();
  _setSystemUIOverlayStyle();
  _initNotifications();
  runApp(const Goodle());
}

Future<FirebaseApp> _initializeFirebaseApp() {
  return Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
}

void _setSystemUIOverlayStyle() {
  return SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
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
              surfaceTintColor: Colors.transparent,
              scrolledUnderElevation: 0,
              iconTheme: IconThemeData(color: AppColors.black),
              elevation: 0,
              centerTitle: true,
              backgroundColor: AppColors.white,
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: AppColors.transparent,
                statusBarBrightness: Brightness.dark,
                statusBarIconBrightness: Brightness.dark,
              ),
            ),
          ),
          initialRoute: SplashScreen.route,
          routes: {
            SplashScreen.route: (context) => const SplashScreen(),
            HomeScreen.route: (context) => const HomeScreen(),
            HowItsWorkScreen.route: (context) => const HowItsWorkScreen(),
            PrivacyScreen.route: (context) => const PrivacyScreen(),
            StatusDayScreen.route: (context) => const StatusDayScreen(),
          },
        );
      },
    );
  }
}
