import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';
import 'package:green_recipe/main.dart';

class NotificationServices {
  // create instance of firebase messaging
  final _firebaseMessaging = FirebaseMessaging.instance;

  // Function to initialize notification
  Future<void> initNotifications() async {
    await _firebaseMessaging.requestPermission();

    final fCMToken = await _firebaseMessaging.getToken();

    // print("Token: $fCMToken");

    initNotifications();

    

  }

  void handleMessage(RemoteMessage? message) {
    if (message == null) return;

    navigatorKey.currentState?.pushNamed(
      "/notification_screen",
      arguments: message
    );
  }

  Future initPushNotifications() async{
    FirebaseMessaging.instance.getInitialMessage().then(handleMessage);

    FirebaseMessaging.onMessage.listen(handleMessage);
  }
}
