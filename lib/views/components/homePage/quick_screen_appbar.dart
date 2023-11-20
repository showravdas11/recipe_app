import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class QuickScreenAppbar extends StatelessWidget {
  const QuickScreenAppbar({
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
              fixedSize: const Size(100, 100),
            ),
          ),
        ),
        const Spacer(),
        const Text(
          "Quick & Fast",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const Spacer(),
        Card(
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Iconsax.notification),
            style: IconButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              backgroundColor: Colors.white,
              fixedSize: const Size(100, 100),
            ),
          ),
        ),
      ],
    );
  }
}
