import 'package:flutter/material.dart';
import 'package:green_recipe/features/authentication/models/food.dart';
import 'package:green_recipe/views/screens/home_screen/recipe_screen.dart';
import 'package:iconsax/iconsax.dart';

class FoodCard extends StatelessWidget {
  final Food food;
  const FoodCard({
    Key? key,
    required this.food,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => RecipeScreen(food: food),
        ),
      ),
      child: SizedBox(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Container(
            width: 380,
            height: 160,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: const Offset(0, 2))
                ]),
            child: Row(
              children: [
                Stack(
                  children: [
                    Container(
                      width: 160,
                      height: 160,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          topLeft: Radius.circular(15),
                        ),
                        image: DecorationImage(
                          image: NetworkImage(food.image),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 1,
                      right: 1,
                      child: SizedBox(
                        height: 45,
                        width: 45,
                        child: Card(
                          elevation: 1,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: IconButton(
                            onPressed: () {
                              // Toggle the like status
                              food.isLiked = !food.isLiked!;
                            },
                            icon: food.isLiked!
                                ? const Icon(Iconsax.heart5, color: Colors.red)
                                : const Icon(Iconsax.heart),
                            iconSize: 20,
                            color: Colors.grey,
                            splashRadius: 10,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              food.name,
                              overflow: TextOverflow.ellipsis,
                              // ignore: prefer_const_constructors
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Iconsax.flash_1,
                                size: 18,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "${food.cal}",
                                style: const TextStyle(
                                  fontSize: 12,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              const Icon(
                                Iconsax.clock,
                                size: 18,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "${food.time} Min",
                                style: const TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Iconsax.star5,
                                color: Color.fromARGB(255, 250, 161, 07),
                                size: 18,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "${food.rate}/5",
                                style: const TextStyle(fontSize: 12),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "${food.reviews} Reviews",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.grey.shade600),
                              )
                            ],
                          )
                        ],
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
