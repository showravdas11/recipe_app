import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:green_recipe/views/components/homePage/categories.dart';
import 'package:green_recipe/views/components/homePage/home_appbar.dart';
import 'package:green_recipe/views/components/homePage/home_searchbar.dart';
import 'package:green_recipe/views/components/homePage/quick_and_fast_list.dart';
import 'package:shimmer/shimmer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String currentCat = "All";
  bool isLoading = true;

  @override
  void initState() {
    super.initState();

    // Simulate a 3-second loading delay
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              isLoading
                  ? _buildShimmerLoadingEffect(
                      child: const HomeAppbar(),
                    )
                  : const HomeAppbar(),
              const SizedBox(height: 20),
              isLoading
                  ? _buildShimmerLoadingEffect(
                      child: const HomeSearchBar(),
                    )
                  : const HomeSearchBar(),
              const SizedBox(height: 20),
              // Use CarouselSlider here
              isLoading
                  ? _buildShimmerLoadingEffect(
                      child: CarouselSlider(
                        items: [
                          'assets/images/chicken-kabab2.png',
                          'assets/images/healthy-salad-1.jpg',
                          'assets/images/chickpea-shoup.png',
                        ].map((imagePath) {
                          return Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.grey,
                            ),
                          );
                        }).toList(),
                        options: CarouselOptions(
                          height: 170,
                          viewportFraction: 0.8,
                          initialPage: 0,
                          enableInfiniteScroll: true,
                          reverse: false,
                          autoPlay: true,
                          autoPlayInterval: const Duration(seconds: 3),
                          autoPlayAnimationDuration:
                              const Duration(milliseconds: 800),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enlargeCenterPage: true,
                          scrollDirection: Axis.horizontal,
                        ),
                      ),
                    )
                  : CarouselSlider(
                      items: [
                        'assets/images/chicken-kabab2.png',
                          'assets/images/healthy-salad-1.jpg',
                          'assets/images/chickpea-shoup.png',
                      ].map((imagePath) {
                        return Container(
                          width: double.infinity,
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
                        height: 170,
                        viewportFraction: 0.8,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: const Duration(seconds: 3),
                        autoPlayAnimationDuration:
                            const Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
              const SizedBox(height: 20),
              isLoading
                  ? _buildShimmerLoadingEffect(
                      child: const Text(
                        "Categories",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  : const Text(
                      "Categories",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
              const SizedBox(height: 20),
              isLoading
                  ? _buildShimmerLoadingEffect(
                      child: Categoriess(currentCat: currentCat),
                    )
                  : Categoriess(currentCat: currentCat),
              const SizedBox(height: 10),
              isLoading
                  ? _buildShimmerLoadingEffect(
                      child: const QuickAndFastList(),
                    )
                  : const QuickAndFastList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildShimmerLoadingEffect({required Widget child}) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: child,
    );
  }
}
