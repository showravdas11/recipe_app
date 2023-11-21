import 'package:flutter/material.dart';
import 'package:green_recipe/features/authentication/models/food.dart';

class CustomElevatedButton extends StatefulWidget {
  final Food food;
  const CustomElevatedButton({Key? key, required this.food}) : super(key: key);

  @override
  State<CustomElevatedButton> createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: SizedBox(
          height: 60,
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(60),
              ),
              primary: const Color.fromARGB(255, 150, 191, 13),
            ),
            child: const Text(
              "See Instructions",
              style: TextStyle(fontSize: 20),
            ),
            onPressed: () {
              showModalBottomSheet(
                shape: const RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20))),
                isScrollControlled: true,
                // Set to true to enable scrolling

                context: context,
                builder: (BuildContext context) {
                  return DraggableScrollableSheet(
                    initialChildSize: 0.5,
                    minChildSize: 0.3,
                    maxChildSize: 1,
                    expand: false,
                    builder: (BuildContext context,
                        ScrollController scrollController) {
                      return Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 50,
                            height: 5,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          Expanded(
                            child: ListView(
                              controller: scrollController,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Text(
                                    widget.food.instructions,
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey.shade700,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
