import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:green_recipe/features/authentication/models/food.dart';
import 'package:green_recipe/views/screens/home_screen/recipe_screen.dart';
import 'package:iconsax/iconsax.dart'; // Import the RecipeScreen

class HomeSearchBar extends StatefulWidget {
  const HomeSearchBar({Key? key}) : super(key: key);

  @override
  _HomeSearchBarState createState() => _HomeSearchBarState();
}

class _HomeSearchBarState extends State<HomeSearchBar> {
  TextEditingController _searchController = TextEditingController();
  Stream<QuerySnapshot>? _searchResults;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Column(
        children: [
          Row(
            children: [
              Icon(Iconsax.search_normal),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: TextField(
                  controller: _searchController,
                  onChanged: (value) {
                    // Call the function to search when text changes
                    _performSearch(value);
                  },
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search any recipes",
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              )
            ],
          ),
          // SizedBox(height: 300,),
          // Display search results using StreamBuilder
          
          if (_searchResults != null)
            StreamBuilder(
              stream: _searchResults,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                  return Text('No results found');
                } else {
                  // Display your search results here
                  return Column(
                    children: snapshot.data!.docs.map((document) {
                      // Extract data from the document
                      String recipeTitle = document['name'];
                      // Customize the UI based on your needs
                      return ListTile(
                        title: Text(recipeTitle),
                        onTap: () {
                          // Assuming 'document' is a Food object, replace it with your actual data structure
                          Food food = Food.fromMap(
                              document.data() as Map<String, dynamic>);
                          _navigateToRecipeScreen(food);
                        },
                      );
                    }).toList(),
                  );
                }
              },
            ),
        ],
      ),
    );
  }

  void _performSearch(String query) {
    // Implement your search logic here using Firebase Firestore
    if (query.isNotEmpty) {
      setState(() {
        _searchResults = FirebaseFirestore.instance
            .collection('Foods')
            .where('name', isGreaterThanOrEqualTo: query)
            .where('name', isLessThan: query + 'z')
            .snapshots();
      });
    } else {
      setState(() {
        _searchResults = null;
      });
    }
  }

  void _navigateToRecipeScreen(Food food) {
    // Navigate to the RecipeScreen page
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => RecipeScreen(food: food),
      ),
    );
  }
}
