import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:green_recipe/firebase_options.dart';
import 'package:green_recipe/utils/theme/theme.dart';
import 'package:green_recipe/utils/theme/theme_provider.dart';
import 'package:green_recipe/views/screens/splashScreen/splash_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,

      // theme: Provider.of<ThemeProvider>(context).themeData,
      home: Splash(),
    );
  }
}
