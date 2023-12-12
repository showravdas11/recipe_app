import 'package:flutter/material.dart';
import 'package:green_recipe/views/screens/favorites_screen.dart';
import 'package:green_recipe/views/screens/home_screen/home_screen.dart';
import 'package:green_recipe/views/screens/settingScreen/setting_screen.dart';
import 'package:green_recipe/views/screens/shopping/shopping_list_screen.dart';
import 'package:iconsax/iconsax.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentTab = 0;
  List screens = [
    const HomeScreen(),
    const FavoritesScreen(),
    const ShoppingScreen(),
    const AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(right: 15, left: 15, bottom: 10, top: 10 ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Color.fromARGB(255, 255, 255, 255),
            boxShadow: [
              BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(0.2)),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth >= 600 ? 40 : 15,
              vertical: 10.0,
            ),
            child: GNav(
              gap: 8,
              activeColor: Color.fromARGB(255, 255, 255, 255),
              iconSize: screenWidth >= 600 ? 28 : 24,
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth >= 600 ? 50 : 15,
                vertical: 8,
              ),
              duration: const Duration(milliseconds: 800),
              tabBackgroundColor: const Color.fromARGB(255, 150, 191, 13),
              tabs: [
                GButton(
                  icon: Iconsax.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Iconsax.heart,
                  text: 'Favorites',
                ),
                GButton(
                  icon: Iconsax.shopping_cart,
                  text: 'Shopping',
                ),
                GButton(
                  icon: Iconsax.setting_2,
                  text: 'Settings',
                ),
              ],
              selectedIndex: currentTab,
              onTabChange: (index) {
                setState(() {
                  currentTab = index;
                });
              },
            ),
          ),
        ),
      ),
      body: screens[currentTab],
    );
  }
}
