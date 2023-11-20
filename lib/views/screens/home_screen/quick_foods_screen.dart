import 'package:flutter/material.dart';
import 'package:green_recipe/features/authentication/models/food.dart';
import 'package:green_recipe/views/components/homePage/food_card.dart';
import 'package:green_recipe/views/components/homePage/quick_screen_appbar.dart';

class QuickFoodsScreen extends StatefulWidget {
  const QuickFoodsScreen({Key? key}) : super(key: key);

  @override
  State<QuickFoodsScreen> createState() => _QuickFoodsScreenState();
}

class _QuickFoodsScreenState extends State<QuickFoodsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const QuickScreenAppbar(),
                const SizedBox(height: 10),
                // Vertical ListView with right-side text
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: foods.length,
                  itemBuilder: (context, index) => FoodCard(food: foods[index]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
