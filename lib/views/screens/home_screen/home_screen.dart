import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:green_recipe/views/components/homePage/categories.dart';
import 'package:green_recipe/views/components/homePage/home_appbar.dart';
import 'package:green_recipe/views/components/homePage/home_searchbar.dart';
import 'package:green_recipe/views/components/homePage/quick_and_fast_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String currentCat = "All";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HomeAppbar(),
                const SizedBox(height: 20),
                const HomeSearchBar(),
                const SizedBox(height: 20),
                // Use CarouselSlider here
                CarouselSlider(
                  items: [
                    'assets/images/chicken-kabab2.png',
                    'assets/images/healthy-salad-1.jpg',
                    'assets/images/chickpea-shoup.png',
                  ].map((imagePath) {
                    return Container(
                      width: MediaQuery.of(context).size.height - 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(imagePath),
                        ),
                      ),
                    );
                  }).toList(),
                  options: CarouselOptions(
                    height: 200,
                    viewportFraction: 1,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration: const Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Categoriess(currentCat: currentCat),
                const SizedBox(height: 10),
                const QuickAndFastList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
