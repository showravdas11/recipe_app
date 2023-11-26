import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:green_recipe/common/widgets/toast/toast.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:green_recipe/features/authentication/controllers/user_controller.dart';
import 'package:green_recipe/views/screens/login_screen/login.dart';

class HomeAppbar extends StatefulWidget {
  const HomeAppbar({
    super.key,
  });

  @override
  State<HomeAppbar> createState() => _HomeAppbarState();
}

const colorizeColors = [
  Color.fromARGB(255, 0, 0, 0),
  Color.fromARGB(255, 150, 191, 13),
  Color.fromARGB(255, 143, 137, 19),
  Color.fromARGB(255, 214, 108, 9)
];
const colorizeTextStyle =
    TextStyle(fontSize: 32, fontWeight: FontWeight.bold, height: 1);

class _HomeAppbarState extends State<HomeAppbar> {
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AnimatedTextKit(
          repeatForever: true,
          animatedTexts: [
            ColorizeAnimatedText(
              'What are you\ncooking today?',
              textStyle: colorizeTextStyle,
              colors: colorizeColors,
            ),
            // ColorizeAnimatedText(
            //   'cooking today?',
            //   textStyle: colorizeTextStyle,
            //   colors: colorizeColors,
            // ),
          ],
          isRepeatingAnimation: true,
          onTap: () {
            print("Tap Event");
          },
        ),
        const Spacer(),
        CircleAvatar(
          foregroundImage: NetworkImage(UserController.user?.photoURL ?? ''),
        )
      ],
    );
  }
}
