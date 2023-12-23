import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CategoriesItem extends StatefulWidget {
  const CategoriesItem({Key? key}) : super(key: key);

  @override
  State<CategoriesItem> createState() => _CategoriesItemState();
}

class _CategoriesItemState extends State<CategoriesItem> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('categories').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: const CircularProgressIndicator());
          }

          return ListView.builder(
            itemCount: snapshot.data!.docs.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              var cate = snapshot.data!.docs[index];
              bool isSelected = index == selectedIndex;

              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = isSelected ? -1 : index;
                  });
                },
                child: Container(
                  width: 100,
                  margin: EdgeInsets.all(1.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: isSelected
                              ? Color.fromARGB(255, 150, 191, 13)// Change the color when selected
                              : Color.fromARGB(255, 234, 248, 242),
                        ),
                        width: 70,
                        height: 65,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.network(
                            cate['image'],
                            width: double.infinity,
                            height: double.infinity,
                            fit: BoxFit.cover,
                            color: isSelected
                              ? Color.fromARGB(255, 255, 255, 255)// Change the color when selected
                              : Color.fromARGB(255, 150, 191, 13),
                          ),
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        cate['catName'],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
