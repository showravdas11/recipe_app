import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:green_recipe/common/widgets/commonButton/rounded.dart';
import 'package:green_recipe/common/widgets/toast/toast.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lottie/lottie.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final emailController = TextEditingController();
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Lottie.network("https://lottie.host/c2f90682-e881-44a2-8db3-3edb81ac2c4e/zmw5G9db1o.json",height: 200),
              const SizedBox(height: 16,),
              Text(
                "Forget Password?",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                "Don't worry sometimes people can forget too, enter your email we will send you password reset link",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 80, 78, 78)),
              ),
              const SizedBox(
                height: 32 * 2,
              ),
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
                    floatingLabelStyle:
                        const TextStyle(color: Color.fromARGB(255, 150, 191, 13)),
                    floatingLabelAlignment: FloatingLabelAlignment.start,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide(
                            width: 2, color: Color.fromARGB(255, 150, 191, 13)))),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter Your Email';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 32,
              ),
              RoundedButton(title: "Reset Password", onTap: () {
                auth.sendPasswordResetEmail(email: emailController.text.toString()).then((value){
                  Utils.toastMessage("We have sent you email to recover password, please cheack email");
                }).onError((error, stackTrace){
                  Utils.toastMessage(error.toString());
                });
              })
            ],
          ),
        ),
      ),
    );
  }
}
