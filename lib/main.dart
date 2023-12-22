import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:green_recipe/firebase_options.dart';
import 'package:green_recipe/notification_services.dart';
import 'package:green_recipe/views/screens/notificationpage/notification.dart';
import 'package:green_recipe/views/screens/splashScreen/splash_screen.dart';
import 'package:flutter/services.dart';

final navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await NotificationServices().initNotifications();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,

      // theme: Provider.of<ThemeProvider>(context).themeData,
      home: Splash(),
      navigatorKey: navigatorKey,
      routes: {
        "/notification_screen":(context) => const NotificationScreen(),
      },
    );
  }
}
