import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:green_recipe/firebase_options.dart';
import 'package:green_recipe/views/screens/splashScreen/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      //-----Recipe finder app theme work-----//
      // themeMode: ThemeMode.system,
      // theme: RecipeAppTheme.lightTheme,
      // darkTheme: RecipeAppTheme.darkTheme,
      home: Splash(),
    );
  }
}
