import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:green_recipe/common/widgets/commonButton/rounded.dart';
import 'package:green_recipe/views/components/signupWidgets/termsAndCodition.dart';
import 'package:green_recipe/common/widgets/social_buttons.dart';
import 'package:green_recipe/common/widgets/toast/toast.dart';
import 'package:green_recipe/utils/constants/colors.dart';
import 'package:green_recipe/utils/constants/sizes.dart';

class RecipeSignUpForm extends StatefulWidget {
  const RecipeSignUpForm({
    super.key,
  });

  @override
  State<RecipeSignUpForm> createState() => _RecipeSignUpFormState();
}

class _RecipeSignUpFormState extends State<RecipeSignUpForm> {
  bool _isPasswordVisible = false;
  bool loading = false;
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final userNameController = TextEditingController();

  FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            const SizedBox(
              height: RecipeAppSizes.spaceBtwInputFields,
            ),

            //user name
            TextFormField(
              expands: false,
              keyboardType: TextInputType.text,
              controller: userNameController,
              decoration: InputDecoration(
                  prefixIcon: const Icon(Iconsax.user),
                  labelText: "User Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  floatingLabelStyle:
                      const TextStyle(color: Color.fromARGB(255, 150, 191, 13)),
                  floatingLabelAlignment: FloatingLabelAlignment.start,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: const BorderSide(
                          width: 2, color: Color.fromARGB(255, 150, 191, 13)))),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter User Name';
                }
                return null;
              },
            ),

            const SizedBox(
              height: RecipeAppSizes.spaceBtwInputFields,
            ),

            TextFormField(
              expands: false,
              keyboardType: TextInputType.text,
              controller: emailController,
              decoration: InputDecoration(
                  prefixIcon: const Icon(Iconsax.direct),
                  labelText: "E-Mail",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  floatingLabelStyle:
                      const TextStyle(color: Color.fromARGB(255, 150, 191, 13)),
                  floatingLabelAlignment: FloatingLabelAlignment.start,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: const BorderSide(
                          width: 2, color: Color.fromARGB(255, 150, 191, 13)))),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter Your Email';
                }
                return null;
              },
            ),

            const SizedBox(
              height: RecipeAppSizes.spaceBtwInputFields,
            ),

            //Password

            TextFormField(
              expands: false,
              keyboardType: TextInputType.text,
              obscureText: !_isPasswordVisible,
              controller: passwordController,
              decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  suffixIcon: IconButton(
                    icon: Icon(
                        _isPasswordVisible ? Iconsax.eye : Iconsax.eye_slash),
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
                  floatingLabelStyle:
                      const TextStyle(color: Color.fromARGB(255, 150, 191, 13)),
                  floatingLabelAlignment: FloatingLabelAlignment.start,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: const BorderSide(
                          width: 2, color: Color.fromARGB(255, 150, 191, 13)))),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter Your Password';
                }
                return null;
              },
            ),

            const SizedBox(
              height: RecipeAppSizes.spaceBtwInputFields,
            ),

            //Terms and condition
            const RecipeTermsCondition(),

            const SizedBox(
              height: RecipeAppSizes.spaceBtwSections,
            ),

            //Sign up button
            RoundedButton(
              title: "Create Account",
              loading: loading,
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  setState(() {
                    loading = true;
                  });
                  _auth
                      .createUserWithEmailAndPassword(
                    email: emailController.text.toString(),
                    password: passwordController.text.toString(),
                  )
                      .then((value) {
                    setState(() {
                      loading = false;
                    });
                  }).onError((error, stackTrace) {
                    Utils.toastMessage(error.toString());
                    setState(() {
                      loading = false;
                    });
                  });
                  emailController.clear();
                  passwordController.clear();
                  userNameController.clear();
                }
              },
            ),

            const SizedBox(
              height: RecipeAppSizes.spaceBtwSections,
            ),

            ///divider
            const Row(
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
                Text('or sign up with'),
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
            const SizedBox(
              height: RecipeAppSizes.spaceBtwSections,
            ),
            const RecipeAppSocialButton(),
          ],
        ));
  }
}
