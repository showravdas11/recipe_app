import 'package:flutter/material.dart';
import 'package:green_recipe/views/components/signupWidgets/siginUpForm.dart';
import 'package:green_recipe/utils/constants/sizes.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: const SingleChildScrollView(
        // scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.all(RecipeAppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Let's create your account",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 150, 191, 13),
                ),
              ),
              SizedBox(
                height: 8,
              ),

              ///Sign up title
              Text(
                "Sign Up now to begin an amazing journey",
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
              ),

              SizedBox(
                height: RecipeAppSizes.spaceBtwItems,
              ),
              //Sign up form
              RecipeSignUpForm(),
            ],
          ),
        ),
      ),
    );
  }
}
