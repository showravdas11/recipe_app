import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments;

    if (arguments is RemoteMessage) {
      final message = arguments;
      return Scaffold(
        appBar: AppBar(
          title: const Text("Notification"),
        ),
        body: Column(
          children: [
            Text(message.notification!.title ?? ""),
            Text(message.notification!.body ?? ""),
            Text(message.data?.toString() ?? "No data"),
          ],
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Notification"),
        ),
        body: const Center(
          child: Text("Invalid notification data"),
        ),
      );
    }
  }
}
