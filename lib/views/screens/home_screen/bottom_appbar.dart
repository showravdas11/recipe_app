import 'package:flutter/material.dart';
import 'package:green_recipe/views/screens/home_screen/home_screen.dart';
import 'package:green_recipe/views/screens/settingScreen/setting_screen.dart';
import 'package:iconsax/iconsax.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentTab = 0;
  List screens = const [
    HomeScreen(),
    Scaffold(),
    Scaffold(),
    AccountScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          elevation: 0.0,
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () => setState(() {
                  currentTab = 0;
                }),
                child: Column(
                  children: [
                    Icon(
                      currentTab == 0 ? Iconsax.home5 : Iconsax.home,
                      color: currentTab == 0
                          ? const Color.fromARGB(255, 150, 191, 13)
                          : Colors.grey,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                        fontSize: 14,
                        color: currentTab == 0
                            ? const Color.fromARGB(255, 150, 191, 13)
                            : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => setState(() {
                  currentTab = 1;
                }),
                child: Column(
                  children: [
                    Icon(
                      currentTab == 1 ? Iconsax.heart5 : Iconsax.heart,
                      color: currentTab == 1
                          ? const Color.fromARGB(255, 150, 191, 13)
                          : Colors.grey,
                    ),
                    Text(
                      "Favorites",
                      style: TextStyle(
                        fontSize: 14,
                        color: currentTab == 1
                            ? const Color.fromARGB(255, 150, 191, 13)
                            : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => setState(() {
                  currentTab = 2;
                }),
                child: Column(
                  children: [
                    Icon(
                      currentTab == 2
                          ? Iconsax.calendar_25
                          : Iconsax.calendar_2,
                      color: currentTab == 2
                          ? const Color.fromARGB(255, 150, 191, 13)
                          : Colors.grey,
                    ),
                    Text(
                      "Meal Plan",
                      style: TextStyle(
                        fontSize: 14,
                        color: currentTab == 2
                            ? const Color.fromARGB(255, 150, 191, 13)
                            : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => setState(() {
                  currentTab = 3;
                }),
                child: Column(
                  children: [
                    Icon(
                      currentTab == 3 ? Iconsax.setting_21 : Iconsax.setting_2,
                      color: currentTab == 3
                          ? const Color.fromARGB(255, 150, 191, 13)
                          : Colors.grey,
                    ),
                    Text(
                      "Settings",
                      style: TextStyle(
                        fontSize: 14,
                        color: currentTab == 3
                            ? const Color.fromARGB(255, 150, 191, 13)
                            : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: screens[currentTab],
      ),
    );
  }
}
