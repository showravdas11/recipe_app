import 'package:flutter/material.dart';
import 'package:green_recipe/features/authentication/models/categories_item.dart';

class Categoriess extends StatelessWidget {
  const Categoriess({
    super.key,
    required this.currentCat,
  });

  final String currentCat;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          categories.length,
          (index) => Container(
            decoration: BoxDecoration(
                color: currentCat == categories[index]
                    ? const Color.fromARGB(255, 150, 191, 13)
                    : Colors.white,
                borderRadius: BorderRadius.circular(25)),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            margin: const EdgeInsets.only(right: 20),
            child: Text(
              categories[index],
              style: TextStyle(
                color: currentCat == categories[index]
                    ? Colors.white
                    : Colors.grey.shade600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
