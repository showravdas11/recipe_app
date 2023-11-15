import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_recipe/utils/constants/colors.dart';
import 'package:green_recipe/utils/constants/sizes.dart';
import 'package:green_recipe/views/screens/login_screen/login.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(RecipeAppSizes.defaultSpace),
          child: Column(
            children: [
              // Image
              Image(
                image: AssetImage(
                    "assets/images/animations/sammy-line-man-receives-a-mail.png"),
              ),

              const SizedBox(
                height: RecipeAppSizes.spaceBtwSections,
              ),

              // Title and subtitle
              Text(
                textAlign: TextAlign.center,
                "Verify your email address!",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF272727),
                ),
              ),

              const SizedBox(
                height: RecipeAppSizes.spaceBtwItems,
              ),

              Text(
                textAlign: TextAlign.center,
                "Example125@gmail.com",
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.normal,
                  color: Color(0xFF272727),
                ),
              ),
              const SizedBox(
                height: RecipeAppSizes.spaceBtwItems,
              ),
              Text(
                textAlign: TextAlign.center,
                "Congratulations! Your Account Awaits: Verify Your Email to Start Shopping and Experience a World of Unrivaled Deals and Personalized Offers.",
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.normal,
                  color: Color(0xFF272727).withOpacity(0.5),
                ),
              ),

              const SizedBox(
                height: RecipeAppSizes.spaceBtwItems,
              ),

              // Button
              SizedBox(
                height: 60.0,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    // foregroundColor: TColors.light,
                    backgroundColor: RecipeAppColors.bgPrimaryColor,
                    // disabledForegroundColor: TColors.darkGrey,
                    // disabledBackgroundColor: TColors.buttonDisabled,
                    side: const BorderSide(color: RecipeAppColors.primary),
                    padding: const EdgeInsets.symmetric(
                        vertical: RecipeAppSizes.buttonHeight),
                    textStyle: const TextStyle(
                        fontSize: 16,
                        color: RecipeAppColors.textWhite,
                        fontWeight: FontWeight.w600),
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(RecipeAppSizes.buttonRadius)),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Continue",
                    style: TextStyle(
                        fontSize: RecipeAppSizes.fontSizeMd,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: RecipeAppSizes.spaceBtwItems,
              ),
              SizedBox(
                height: 60.0,
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Resend Email",
                    style: TextStyle(
                      fontSize: RecipeAppSizes.fontSizeMd,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF272727).withOpacity(0.5),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
