import 'package:flutter/material.dart';
import 'package:green_recipe/utils/constants/colors.dart';
import 'package:green_recipe/utils/constants/sizes.dart';

class RoundedButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final bool loading;
  const RoundedButton(
      {super.key,
      required this.title,
      required this.onTap,
      this.loading = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 60.0,
        width: double.infinity,
        decoration: BoxDecoration(
          color: RecipeAppColors.bgPrimaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: loading
              ? CircularProgressIndicator(
                  strokeWidth: 3,
                  color: Colors.white,
                )
              : Text(
                  title,
                  style: TextStyle(fontSize: RecipeAppSizes.fontSizeLg,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
        ),
      ),
    );
  }
}


// SizedBox(
//               height: 60.0,
//               width: double.infinity,
//               child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   elevation: 0,
//                   backgroundColor: RecipeAppColors.bgPrimaryColor,
//                   side: const BorderSide(color: RecipeAppColors.primary),
//                   padding: const EdgeInsets.symmetric(
//                       vertical: RecipeAppSizes.buttonHeight),
//                   textStyle: const TextStyle(
//                       fontSize: 16,
//                       color: RecipeAppColors.textWhite,
//                       fontWeight: FontWeight.w600),
//                   shape: RoundedRectangleBorder(
//                       borderRadius:
//                           BorderRadius.circular(RecipeAppSizes.buttonRadius)),
//                 ),
//                 onPressed: () {
//                   if (_formKey.currentState!.validate()) {}
//                   // Navigator.push(context, MaterialPageRoute(builder: (context) => VerifyEmailScreen(),));
//                 },
//                 child: Text(
//                   "Create Account",
//                   style: TextStyle(
//                       fontSize: RecipeAppSizes.fontSizeLg,
//                       fontWeight: FontWeight.w700,
//                       color: Colors.white),
//                 ),
//               ),
//             ),