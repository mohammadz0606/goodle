import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;

class NotificationServices {
  final FlutterLocalNotificationsPlugin _notificationsPlugin =
      FlutterLocalNotificationsPlugin();

  Future<void> initNotification() async {
    tz.initializeTimeZones();
    AndroidInitializationSettings initializationSettingsAndroid =
        const AndroidInitializationSettings('goodle');

    DarwinInitializationSettings initializationSettingsIOS =
        const DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );

    InitializationSettings settings = InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsIOS,
    );

    await _notificationsPlugin.initialize(settings);
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  }

  static Future<NotificationDetails> _notificationDetails() async {
    AndroidNotificationDetails androidNotificationDetails =
        const AndroidNotificationDetails(
      "channel_id",
      "channel_name",
      channelDescription: "channel_description",
      importance: Importance.max,
      playSound: true,
      priority: Priority.max,
    );

    DarwinNotificationDetails iosNotificationDetails =
        const DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
    );

    return NotificationDetails(
      iOS: iosNotificationDetails,
      android: androidNotificationDetails,
    );
  }

  Future<void> scheduleNotificationPeriodically() async {
    const Duration interval = Duration(hours: 12);

    Timer.periodic(
      interval,
      (Timer timer) async {
        await _notificationsPlugin.zonedSchedule(
          timer.tick,
          'Periodic Notification',
          'This is a periodic notification!',
          tz.TZDateTime.now(tz.local).add(interval * timer.tick),
          await _notificationDetails(),
          payload: 'payload_value',
          androidScheduleMode: AndroidScheduleMode.alarmClock,
          matchDateTimeComponents: DateTimeComponents.time,
          uiLocalNotificationDateInterpretation:
              UILocalNotificationDateInterpretation.absoluteTime,
        );
      },
    );
  }

  static Future<void> _firebaseMessagingBackgroundHandler(
    RemoteMessage message,
  ) async {
    final NotificationServices notificationServices = NotificationServices();
    await notificationServices._displayNotification(message);
  }

  Future<void> _displayNotification(RemoteMessage message) async {
    final notificationData = message.notification;
    if (notificationData != null) {
      final title = notificationData.title;
      final body = notificationData.body;

      AndroidNotificationDetails androidNotificationDetails =
          const AndroidNotificationDetails(
        "channel_id",
        "channel_name",
        channelDescription: "channel_description",
        importance: Importance.max,
        playSound: true,
        priority: Priority.max,
      );

      DarwinNotificationDetails iosNotificationDetails =
          const DarwinNotificationDetails(
        presentAlert: true,
        presentBadge: true,
        presentSound: true,
      );

      final notification = NotificationDetails(
        android: androidNotificationDetails,
        iOS: iosNotificationDetails,
      );

      await _notificationsPlugin.show(
        0,
        title,
        body,
        notification,
      );
    }
  }
}
