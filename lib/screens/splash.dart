import 'package:flutter/material.dart';

import '../widgets/splash/splash_body.dart';
import 'home.dart';

class SplashScreen extends StatefulWidget {
  static const String route = "splash_screen";

  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _goToHomeScreen();
    super.initState();
  }

  Future<Object?> _goToHomeScreen() {
    return Future.delayed(
      const Duration(seconds: 2),
      () {
        return Navigator.of(context).pushReplacementNamed(HomeScreen.route);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashBody(),
    );
  }
}
