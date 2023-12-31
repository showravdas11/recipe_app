import 'package:flutter/material.dart';
import 'package:green_recipe/common/widgets/commonButton/rounded.dart';
import 'package:green_recipe/common/widgets/social_buttons.dart';
import 'package:green_recipe/views/screens/forgetPassword/forget_password_screen.dart';
import 'package:green_recipe/views/screens/home_screen/bottom_appbar.dart';
import 'package:green_recipe/views/screens/signup_screen/signUp.dart';
import 'package:green_recipe/common/widgets/toast/toast.dart';
import 'package:green_recipe/utils/constants/colors.dart';
import 'package:iconsax/iconsax.dart';
import 'package:green_recipe/utils/constants/sizes.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isPasswordVisible = false;
  bool loading = false;
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _auth = FirebaseAuth.instance;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.only(top: 56.0, left: 24.0, right: 24.0, bottom: 24.0),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome back,",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(150, 191, 13, 1)
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  "Good Food Good Mood, Sign into your Account",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),

                SizedBox(
                  height: 16.0,
                ),

                //FORM
                Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 32.0),
                    child: Column(
                      children: [
                        // Email
                        TextFormField(
                          expands: false,
                          keyboardType: TextInputType.text,
                          controller: emailController,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Iconsax.direct),
                              labelText: "E-Mail",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                              floatingLabelStyle: const TextStyle(
                                  color: Color.fromARGB(255, 150, 191, 13)),
                              floatingLabelAlignment:
                                  FloatingLabelAlignment.start,
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(100),
                                  borderSide: BorderSide(
                                      width: 2,
                                      color:
                                          Color.fromARGB(255, 150, 191, 13)))),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter Your Email';
                            }
                            return null;
                          },
                        ),

                        SizedBox(
                          height: 19.0,
                        ),

                        // password

                        TextFormField(
                          expands: false,
                          keyboardType: TextInputType.text,
                          obscureText: !_isPasswordVisible,
                          controller: passwordController,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Iconsax.password_check),
                              suffixIcon: IconButton(
                                icon: Icon(_isPasswordVisible
                                    ? Iconsax.eye
                                    : Iconsax.eye_slash),
                                onPressed: () {
                                  setState(() {
                                    _isPasswordVisible = !_isPasswordVisible;
                                  });
                                },
                              ),
                              labelText: "Password",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                              floatingLabelStyle: const TextStyle(
                                  color: Color.fromARGB(255, 150, 191, 13)),
                              floatingLabelAlignment:
                                  FloatingLabelAlignment.start,
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(100),
                                  borderSide: BorderSide(
                                      width: 2,
                                      color:
                                          Color.fromARGB(255, 150, 191, 13)))),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter Your Password';
                            }
                            return null;
                          },
                        ),

                        SizedBox(
                          height: 8.0,
                        ),

                        // remember me and forget password
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            //forget password
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ForgetPasswordScreen()));
                              },
                              child: Text(
                                "Forget Password?",
                                style: TextStyle(
                                    fontSize: RecipeAppSizes.fontSizeMd,
                                    fontWeight: FontWeight.w600,
                                    color: RecipeAppColors.textSecondary),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),

                        //sign in button
                        RoundedButton(
                            loading: loading,
                            title: "Sign In",
                            onTap: () {
                              if (_formKey.currentState!.validate()) {
                                setState(() {
                                  loading = true;
                                });
                                _auth
                                    .signInWithEmailAndPassword(
                                        email: emailController.text.toString(),
                                        password:
                                            passwordController.text.toString())
                                    .then((value) {
                                  Utils.toastMessage(
                                      value.user!.email.toString());
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => MainScreen(),
                                      ));
                                  setState(() {
                                    loading = false;
                                  });
                                }).onError((error, stackTrace) {
                                  debugPrint(error.toString());
                                  Utils.toastMessage(error.toString());
                                  setState(() {
                                    loading = false;
                                  });
                                });
                              }
                            }),

                        SizedBox(
                          height: 16.0,
                        ),

                        //create account button
                        SizedBox(
                          height: 60.0,
                          width: double.infinity,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              elevation: 0,
                              foregroundColor: Colors.black,
                              side: const BorderSide(
                                  color: RecipeAppColors.borderColor),
                              textStyle: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                              padding: const EdgeInsets.symmetric(
                                  vertical: RecipeAppSizes.buttonHeight,
                                  horizontal: 20),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(60),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignUpScreen(),
                                ),
                              );
                            },
                            child: Text("Create Account"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: 20,
                ),
                //Devider
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Divider(
                        color: RecipeAppColors.dividerColor,
                        thickness: 0.5,
                        indent: 60,
                        endIndent: 5,
                      ),
                    ),
                    Text('or sign in with'),
                    Flexible(
                      child: Divider(
                        color: RecipeAppColors.dividerColor,
                        thickness: 0.5,
                        indent: 5,
                        endIndent: 60,
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 25.0,
                ),

                //Footer
                RecipeAppSocialButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
