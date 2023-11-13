import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:recipe_app/common/widgets/commonButton/rounded.dart';
import 'package:recipe_app/common/widgets/signupWidgets/termsAndCodition.dart';
import 'package:recipe_app/common/widgets/social_buttons.dart';
import 'package:recipe_app/common/widgets/toast/toast.dart';
import 'package:recipe_app/utils/constants/colors.dart';
import 'package:recipe_app/utils/constants/sizes.dart';

class RecipeSignUpForm extends StatefulWidget {
  const RecipeSignUpForm({
    super.key,
  });

  @override
  State<RecipeSignUpForm> createState() => _RecipeSignUpFormState();
}

class _RecipeSignUpFormState extends State<RecipeSignUpForm> {
  bool loading = false;
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

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
            Row(
              children: [
                Expanded(
                  child: TextField(
                    expands: false,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Iconsax.user),
                      labelText: "First Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: RecipeAppSizes.spaceBtwInputFields,
                ),
                Expanded(
                  child: TextField(
                    expands: false,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Iconsax.user),
                      labelText: "Last Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: RecipeAppSizes.spaceBtwInputFields,
            ),

            //user name
            TextField(
              expands: false,
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.user_edit),
                labelText: "User Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
              ),
            ),

            SizedBox(
              height: RecipeAppSizes.spaceBtwInputFields,
            ),

            //Email
            // TextField(
            //   expands: false,
            //   keyboardType: TextInputType.emailAddress,
            //   controller: emailController,
            //   decoration: InputDecoration(
            //     prefixIcon: Icon(Iconsax.direct),
            //     labelText: "E-Mail",
            //     border: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(7),
            //     ),
            //   ),
            // ),

            TextFormField(
              expands: false,
              keyboardType: TextInputType.text,
              controller: emailController,
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.direct),
                labelText: "E-Mail",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter Password';
                }
                return null;
              },
            ),

            SizedBox(
              height: RecipeAppSizes.spaceBtwInputFields,
            ),

            //Phone Number
            TextField(
              expands: false,
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.call),
                labelText: "Phone Number",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
              ),
            ),

            SizedBox(
              height: RecipeAppSizes.spaceBtwInputFields,
            ),

            //Password

            TextFormField(
              expands: false,
              keyboardType: TextInputType.text,
              controller: passwordController,
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash),
                labelText: "Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter Password';
                }
                return null;
              },
            ),

            SizedBox(
              height: RecipeAppSizes.spaceBtwInputFields,
            ),

            //Terms and condition
            RecipeTermsCondition(),

            SizedBox(
              height: RecipeAppSizes.spaceBtwSections,
            ),

            //Sign up button
            RoundedButton(title: "Create Account", loading: loading,
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  setState(() {
                    loading = true;
                  });
                  _auth.createUserWithEmailAndPassword(
                    email: emailController.text.toString(),
                    password: passwordController.text.toString(),
                  ).then((value) {
                    setState(() {
                    loading = false;
                  });
                  }).onError((error, stackTrace){
                    Utils.toastMessage(error.toString());
                    setState(() {
                    loading = false;
                  });
                  });
                }
              },),

            SizedBox(
              height: RecipeAppSizes.spaceBtwSections,
            ),

            ///divider
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
            SizedBox(
              height: RecipeAppSizes.spaceBtwSections,
            ),
            RecipeAppSocialButton(),
          ],
        ));
  }
}
