import 'package:firebase_analytics/firebase_analytics.dart';

abstract class AnalyticsApp{
  static final FirebaseAnalytics analytics = FirebaseAnalytics.instance;

  static void trackPageView(String pageName) {
    analytics.setCurrentScreen(screenName: pageName);
  }
}