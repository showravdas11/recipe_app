import 'package:flutter/material.dart';
import 'package:green_recipe/common/widgets/toast/toast.dart';
import 'package:green_recipe/features/authentication/controllers/user_controller.dart';
import 'package:green_recipe/utils/constants/colors.dart';
import 'package:green_recipe/views/screens/home_screen/bottom_appbar.dart';

class RecipeAppSocialButton extends StatefulWidget {
  const RecipeAppSocialButton({Key? key}) : super(key: key);

  @override
  State<RecipeAppSocialButton> createState() => _RecipeAppSocialButtonState();
}

class _RecipeAppSocialButtonState extends State<RecipeAppSocialButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: RecipeAppColors.borderColor),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () async {
              try {
                await UserController.signOut(); // Clear previous user session
                final user = await UserController.loginWithGoogle();
                if (user != null && mounted) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MainScreen(),
                    ),
                  );
                }
              } catch (error) {
                Utils.toastMessage(error.toString());
              }
            },
            icon: Image(
              width: 24.0,
              height: 24.0,
              image: AssetImage("assets/images/google-icon.png"),
            ),
          ),
        ),
        SizedBox(
          width: 16.0,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: RecipeAppColors.borderColor),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {
              // Handle Facebook login
            },
            icon: Image(
              width: 24.0,
              height: 24.0,
              image: AssetImage("assets/images/facebook-icon.png"),
            ),
          ),
        ),
      ],
    );
  }
}
