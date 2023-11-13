import 'package:flutter/material.dart';
import 'package:recipe_app/utils/constants/colors.dart';

class RecipeAppSocialButton extends StatelessWidget {
  const RecipeAppSocialButton({
    super.key,
  });

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
            onPressed: () {},
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
            onPressed: () {},
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