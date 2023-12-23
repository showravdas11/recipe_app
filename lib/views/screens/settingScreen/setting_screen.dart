import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:green_recipe/common/widgets/forward_button.dart';
import 'package:green_recipe/common/widgets/setting_item.dart';
import 'package:green_recipe/common/widgets/setting_switch.dart';
import 'package:green_recipe/common/widgets/toast/toast.dart';
import 'package:green_recipe/features/authentication/controllers/user_controller.dart';
import 'package:green_recipe/utils/theme/theme_provider.dart';
import 'package:green_recipe/views/screens/editAccountScreen/edit_account_screen.dart';
import 'package:green_recipe/views/screens/login_screen/login.dart';
import 'package:green_recipe/views/screens/notificationpage/notification.dart';
import 'package:ionicons/ionicons.dart';
import 'package:provider/provider.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  bool isDarkMode = false;
  // final auth = FirebaseAuth.instance;
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Ionicons.chevron_back_outline,
            color: Colors.black,
          ),
        ),
        leadingWidth: 80,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Settings",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40),
              const Text(
                "Account",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: Row(
                  children: [
                    CircleAvatar(
                      foregroundImage:
                          NetworkImage(UserController.user?.photoURL ?? ''),
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          UserController.user?.displayName ?? '',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          UserController.user?.email ?? '',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                    const Spacer(),
                    ForwardButton(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const EditAccountScreen(),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Settings",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 20),
              SettingItem(
                title: "Language",
                icon: Ionicons.earth,
                bgColor: Colors.orange.shade100,
                iconColor: Colors.orange,
                value: "English",
                onTap: () {},
              ),
              const SizedBox(height: 20),
              SettingItem(
  title: "Notifications",
  icon: Ionicons.notifications,
  bgColor: Colors.blue.shade100,
  iconColor: Colors.blue,
  onTap: () async {
    await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const NotificationScreen()),
    );
  },
),
              const SizedBox(height: 20),
              SettingSwitch(
                title: "Dark Mode",
                icon: Ionicons.earth,
                bgColor: Colors.purple.shade100,
                iconColor: Colors.purple,
                value: isDarkMode,
                onTap: (value) {
                  setState(() {
                    isDarkMode = value;
                  });
                  // Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
                },
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  UserController.signOut().then((_) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  }).catchError((error) {
                    Utils.toastMessage(error.toString());
                  });
                },
                child: SettingItem(
                  title: "Logout",
                  icon: Ionicons.log_out_outline,
                  bgColor: Color.fromRGBO(225, 251, 137, 0.922),
                  iconColor: Color.fromARGB(255, 114, 148, 4),
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
