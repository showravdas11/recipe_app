import 'package:flutter/material.dart';
import 'package:green_recipe/features/authentication/models/food.dart';
import 'package:green_recipe/views/screens/home_screen/elevationbottom.dart';

import 'package:green_recipe/views/screens/home_screen/recipe_appbar.dart';
import 'package:iconsax/iconsax.dart';

class RecipeScreen extends StatefulWidget {
  final Food food;
  const RecipeScreen({Key? key, required this.food}) : super(key: key);

  @override
  State<RecipeScreen> createState() => _RecipeScreenState();
}

class _RecipeScreenState extends State<RecipeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  child: Container(
                    height: MediaQuery.of(context).size.width - 1,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(widget.food.image),
                          fit: BoxFit.fill),
                    ),
                  ),
                ),
                const Column(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 40, horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RecipeAppbar(),
                        ],
                      ),
                    ),
                  ],
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  top: MediaQuery.of(context).size.width - 30,
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(15),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Container(
              width: 50,
              height: 5,
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(8)),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.food.name,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Container(
                            height: 120,
                            margin: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.green.shade50,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Iconsax.flash_11,
                                  size: 25,
                                  color: Color.fromARGB(255, 150, 191, 13),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "${widget.food.cal} Cal",
                                  style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 150, 191, 13),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 120,
                            margin: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.red.shade50,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Iconsax.clock5,
                                  size: 25,
                                  color: Color.fromARGB(255, 232, 86, 89),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "${widget.food.time} Min",
                                  style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 232, 86, 89),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 120,
                            margin: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.orange.shade50,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Iconsax.star5,
                                  size: 25,
                                  color: Color.fromARGB(255, 250, 161, 7),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "${widget.food.rate}/5",
                                  style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 250, 161, 7),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    "Ingredients",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    widget.food.ingredients
                        .map((ingredient) =>
                            '$ingredient\n') // Add double line break after each ingredient
                        .join(),
                    style: TextStyle(fontSize: 15, color: Colors.grey.shade600),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                CustomElevatedButton(
                  food: widget.food,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
