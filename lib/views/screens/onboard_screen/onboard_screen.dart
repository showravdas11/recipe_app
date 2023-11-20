import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:green_recipe/features/authentication/models/onboard_content_model.dart';
import 'package:green_recipe/views/screens/home_screen/bottom_appbar.dart';
import 'package:green_recipe/views/screens/login_screen/login.dart';
import 'package:page_transition/page_transition.dart';
import 'package:firebase_auth/firebase_auth.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final auth = FirebaseAuth.instance;
    final user = auth.currentUser;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return Padding(
                  padding: const EdgeInsets.all(40),
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        contents[i].image,
                        height: 350,
                        width: 350,
                      ),
                      Text(
                        contents[i].title,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 150, 191, 13),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        contents[i].discription,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15, color: Colors.grey.shade600),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              contents.length,
              (index) => buildDot(index, context),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(40),
            child: SizedBox(
              height: 60,
              width: double.infinity,
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60),
                  ),
                  backgroundColor: const Color.fromARGB(255, 150, 191, 13),
                ),
                onPressed: () {
                  if (currentIndex == contents.length - 1) {
                    if (user != null) {
                      Navigator.push(
                        context,
                        PageTransition(
                          child: const MainScreen(),
                          type: PageTransitionType.fade,
                          duration: const Duration(milliseconds: 500),
                        ),
                      );
                    } else {
                      Navigator.push(
                        context,
                        PageTransition(
                          child: const LoginScreen(),
                          type: PageTransitionType.fade,
                          duration: const Duration(milliseconds: 500),
                        ),
                      );
                    }
                  }
                  _controller.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeIn,
                  );
                },
                child: Text(
                  currentIndex == contents.length - 1 ? 'Continue' : "Next",
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(255, 150, 191, 13),
      ),
    );
  }
}
