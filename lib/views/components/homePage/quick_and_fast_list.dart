import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:green_recipe/features/authentication/models/food.dart';
import 'package:green_recipe/views/screens/home_screen/quick_foods_screen.dart';
import 'package:green_recipe/views/screens/home_screen/recipe_screen.dart';
import 'package:iconsax/iconsax.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class QuickAndFastList extends StatefulWidget {
  const QuickAndFastList({Key? key}) : super(key: key);

  @override
  State<QuickAndFastList> createState() => _QuickAndFastListState();
}

class _QuickAndFastListState extends State<QuickAndFastList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AnimatedTextKit(
              repeatForever: false,
              pause: const Duration(microseconds: 50),
              totalRepeatCount: 2,
              animatedTexts: [
                TypewriterAnimatedText(
                  "Quick & Fast",
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  speed: const Duration(milliseconds: 200),
                ),
              ],
              onTap: () {
                print("sdf");
              },
            ),
            TextButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const QuickFoodsScreen(),
                ),
              ),
              child: const Text(
                "View All",
                style: TextStyle(
                  color: Color.fromARGB(255, 150, 191, 13),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection('Foods').snapshots(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: const CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else {
              final foods = snapshot.data!.docs.map((doc) {
                return Food.fromMap(doc.data() as Map<String, dynamic>);
              }).toList();

              return SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (int index = 0; index < 7 && index < foods.length; index++)
                      GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RecipeScreen(food: foods[index]),
                          ),
                        ),
                        child: Container(
                          margin: const EdgeInsets.only(right: 15),
                          width: 180,
                          child: Stack(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 180,
                                    height: 180,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: DecorationImage(
                                        image: NetworkImage(foods[index].image),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    foods[index].name,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 2),
                                  Row(
                                    children: [
                                      Icon(
                                        Iconsax.flash_1,
                                        size: 18,
                                        color: Colors.grey.shade600,
                                      ),
                                      const SizedBox(
                                        width: 1,
                                      ),
                                      Text(
                                        "${foods[index].cal} Cal",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey.shade600,
                                        ),
                                      ),
                                      Text(
                                        " • ",
                                        style: TextStyle(
                                          fontSize: 30,
                                          color: Colors.grey.shade600,
                                        ),
                                      ),
                                      Icon(
                                        Iconsax.clock,
                                        size: 18,
                                        color: Colors.grey.shade600,
                                      ),
                                      const SizedBox(
                                        width: 1,
                                      ),
                                      Text(
                                        "${foods[index].time} Min",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey.shade600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
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
                                      borderRadius: BorderRadius.circular(200),
                                    ),
                                    child: IconButton(
                                      onPressed: () {
                                        // Toggle the like status
                                        setState(() {
                                          foods[index].isLiked = !foods[index].isLiked!;
                                        });
                                      },
                                      icon: foods[index].isLiked!
                                          ? const Icon(
                                              Iconsax.heart5,
                                              color: Colors.red,
                                            )
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
                        ),
                      ),
                  ],
                ),
              );
            }
          },
        ),
      ],
    );
  }
}
