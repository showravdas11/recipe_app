import 'package:cloud_firestore/cloud_firestore.dart';
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
      // backgroundColor: Colors.green,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const QuickScreenAppbar(),
                const SizedBox(height: 10),
                // Vertical ListView with right-side text
                StreamBuilder(
                    stream: FirebaseFirestore.instance
                        .collection("Foods")
                        .snapshots(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.active) {
                        if (snapshot.hasData) {
                          return ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: snapshot.data!.docs.length,
                            itemBuilder: (context, index) {
                              // Assuming you have a Food model and a fromMap constructor
                              Food food = Food.fromMap(
                                  snapshot.data!.docs[index].data()
                                      as Map<String, dynamic>);
                              food.id = snapshot.data!.docs[index].id;
                              return FoodCard(food: food);
                            },
                          );
                        } else if (snapshot.hasError) {
                          return Center(
                            child: Text("${snapshot.hasError.toString()}"),
                          );
                        } else {
                          return Center(
                            child: Text("NO DATA FOUND"),
                          );
                        }
                      } else {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
