import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ShoppingScreen extends StatefulWidget {
  const ShoppingScreen({Key? key}) : super(key: key);

  @override
  _ShoppingScreenState createState() => _ShoppingScreenState();
}

class _ShoppingScreenState extends State<ShoppingScreen> {
   List<String> shoppingList = [];
  TextEditingController itemController = TextEditingController();

  createToDo() {
    DocumentReference documentReference = FirebaseFirestore.instance
        .collection("userTodos")
        .doc(itemController.text);

    Map<String, String> todoList = {
      "todoTitle":itemController.text,
    };
    documentReference.set(todoList).whenComplete(() => {
      itemController.clear(),
      print("Error storing data:"),
    });
  }

  void deleteTodo(String todoTitle) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Confirm Delete"),
          content: Text("Are you sure you want to delete this item?"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Close the alert dialog
              },
              child: Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                // Delete from Firestore
                FirebaseFirestore.instance
                    .collection("userTodos")
                    .doc(todoTitle)
                    .delete()
                    .whenComplete(() {
                  print("Data deleted from Firestore");
                  Navigator.pop(context); // Close the alert dialog
                }).catchError((error) {
                  print("Error deleting data: $error");
                });
                itemController.clear();
                // Update the UI
                setState(() {
                  shoppingList.remove(todoTitle);
                });
              },
              child: Text("Delete"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 15.0, left: 15.0),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "Shopping List",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance.collection("userTodos").snapshots(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }

                if (snapshot.hasError) {
                  return Center(
                    child: Text("Error: ${snapshot.error}"),
                  );
                }

                List<String> shoppingList = snapshot.data!.docs
                    .map((DocumentSnapshot document) => document["todoTitle"] as String)
                    .toList();

                return shoppingList.isEmpty
                    ? Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Iconsax.note_21,
                              size: 40.0,
                              color: Colors.grey,
                            ),
                            const SizedBox(height: 10.0),
                            Text(
                              "No Items added",
                              style: TextStyle(fontSize: 15.0, color: Colors.grey),
                            ),
                          ],
                        ),
                      )
                    : ListView.builder(
                        itemCount: shoppingList.length,
                        itemBuilder: (context, index) {
                          return Container(
                            padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                            width: double.infinity,
                            margin: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 8.0,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.4),
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                            ),
                            child: ListTile(
                              title: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Ingredients ${index + 1}",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(shoppingList[index],style: TextStyle(fontSize: 20),),
                                ],
                              ),
                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                   Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(175, 255, 17, 0),
                                      borderRadius: BorderRadius.circular(15)
                                    ),
                                     child: IconButton(
                                        icon: Icon(
                                          Iconsax.trash,
                                          color: Colors.white,
                                          size: 19,
                                        ),
                                        onPressed: () {
                                          // Implement delete logic if needed
                                           deleteTodo(shoppingList[index]);
                                        },
                                        splashRadius: 10,
                                      ),
                                   ),
                                  
                                ],
                              ),
                            ),
                          );
                        },
                      );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextField(
                      controller: itemController,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(15),
                        hintText: 'Add Grocery Item...',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16.0),
                SizedBox(
                  child: FloatingActionButton(
                    tooltip: 'Add',
                    backgroundColor: Color.fromARGB(255, 150, 191, 13),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: const Icon(
                      Iconsax.add,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      createToDo();
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
