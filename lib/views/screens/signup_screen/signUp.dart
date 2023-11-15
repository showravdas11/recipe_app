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
        iconTheme: IconThemeData(
    color: Colors.black, //change your color here
  ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        // scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.all(RecipeAppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sign Up now to begin an amazing journey",
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              SizedBox(height: 20,),
              ///Sign up title
              Text(
                "Let's create your account",
                style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
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

