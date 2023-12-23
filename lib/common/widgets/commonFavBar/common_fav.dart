import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CommonFavBar extends StatefulWidget {
  const CommonFavBar({super.key});

  @override
  State<CommonFavBar> createState() => _CommonFavBarState();
}

class _CommonFavBarState extends State<CommonFavBar> {
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
        const Text(
          "Favorites",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}