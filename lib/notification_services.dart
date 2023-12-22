import 'dart:developer';

import 'package:firebase_messaging/firebase_messaging.dart';

Future<void> BackgroundHandler(RemoteMessage remoteMessage) async {
  log("Handling background message: ${remoteMessage.notification?.title}");
  // Optionally, handle the FCM token here as well
  String? token = await FirebaseMessaging.instance.getToken();
  log("FCM Token: $token");
}

class NotificationServices {
  static Future<void> initialize() async {
    await FirebaseMessaging.instance.requestPermission();
    
    FirebaseMessaging.onBackgroundMessage(BackgroundHandler);

    FirebaseMessaging.onMessage.listen((message) {
      log("Handling foreground message: ${message.notification?.title}");
      // You can add additional handling for foreground messages here
    });

    log("Notification service initialized");
  }
}
