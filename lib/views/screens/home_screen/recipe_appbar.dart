import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class RecipeAppbar extends StatelessWidget {
  const RecipeAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Card(
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Iconsax.arrow_left_2),
            style: IconButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              backgroundColor: Colors.white,
              fixedSize: const Size(50, 50),
            ),
          ),
        ),
        const Spacer(),
        Card(
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Iconsax.heart),
            style: IconButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              backgroundColor: Colors.white,
              fixedSize: const Size(50, 50),
            ),
          ),
        ),
      ],
    );
  }
}
