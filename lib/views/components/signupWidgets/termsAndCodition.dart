import 'package:flutter/material.dart';
import 'package:green_recipe/utils/constants/colors.dart';
import 'package:green_recipe/utils/constants/sizes.dart';

class RecipeTermsCondition extends StatelessWidget {
  const RecipeTermsCondition({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(value: true, onChanged: (value) {}),
        ),
        SizedBox(
          width: RecipeAppSizes.spaceBtwItems,
        ),
        Text.rich(
          TextSpan(children: [
            TextSpan(
              text: "I agree to" ' ',
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w500,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ]),
        ),
        Text.rich(
          TextSpan(children: [
            TextSpan(
              text: "Privacy Policy" ' ',
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.underline,
                color:
                    RecipeAppColors.textPrimary.withOpacity(0.8),
              ),
            ),
          ]),
        ),
        Text.rich(
          TextSpan(children: [
            TextSpan(
              text: "and" ' ',
              style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                  // decorationColor: RecipeAppColors.textSecondary,
                  color: Colors.black.withOpacity(0.5)),
            ),
          ]),
        ),
        Text.rich(
          TextSpan(children: [
            TextSpan(
              text: "Terms of use",
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.underline,
                color:
                    RecipeAppColors.textPrimary.withOpacity(0.8),
              ),
            ),
          ]),
        ),
      ],
    );
  }
}