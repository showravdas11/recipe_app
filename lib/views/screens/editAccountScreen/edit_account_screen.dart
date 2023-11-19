import 'dart:io';

import 'package:flutter/material.dart';
import 'package:green_recipe/common/widgets/commonButton/rounded.dart';
import 'package:iconsax/iconsax.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ionicons/ionicons.dart';

class EditAccountScreen extends StatefulWidget {
  const EditAccountScreen({super.key});

  @override
  State<EditAccountScreen> createState() => _EditAccountScreenState();
}

class _EditAccountScreenState extends State<EditAccountScreen> {
  // TextEditingController nameController = TextEditingController();
  // TextEditingController emailController = TextEditingController();

  File? _selectedImage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Ionicons.chevron_back_outline,
              color: Colors.black,
            )),
        title: Text(
          "Edit Profile",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 150,
                    height: 150,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
              color: Color.fromARGB(255, 150, 191, 13), // Set the color of the border here
              width: 3.0, // Set the width of the border
            )
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: _selectedImage != null
                            ? Image.file(_selectedImage!, fit: BoxFit.cover)
                            : Align(
                              alignment: Alignment.center,
                                child: Text(
                                "please Select an image",
                              )),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color.fromARGB(255, 150, 191, 13)),
                      child: GestureDetector(
                        child: Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.white,
                          size: 20,
                        ),
                        onTap: (() {
                          _picImageFormGallery();
                        }),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Form(
                  child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.user),
                        labelText: "Full Name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        floatingLabelStyle: const TextStyle(
                            color: Color.fromARGB(255, 150, 191, 13)),
                        floatingLabelAlignment: FloatingLabelAlignment.start,
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide: BorderSide(
                                width: 2,
                                color: Color.fromARGB(255, 150, 191, 13)))),
                  ),
                  const SizedBox(height: 15),
                  TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.direct),
                        labelText: "E-Mail",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        floatingLabelStyle: const TextStyle(
                            color: Color.fromARGB(255, 150, 191, 13)),
                        floatingLabelAlignment: FloatingLabelAlignment.start,
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide: BorderSide(
                                width: 2,
                                color: Color.fromARGB(255, 150, 191, 13)))),
                  ),
                  const SizedBox(height: 15),
                  TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.password_check),
                        suffixIcon: Icon(Iconsax.eye_slash),
                        labelText: "Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        floatingLabelStyle: const TextStyle(
                            color: Color.fromARGB(255, 150, 191, 13)),
                        floatingLabelAlignment: FloatingLabelAlignment.start,
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide: BorderSide(
                                width: 2,
                                color: Color.fromARGB(255, 150, 191, 13)))),
                  ),
                ],
              )),
              SizedBox(
                height: 40,
              ),
              RoundedButton(title: "Submit", onTap: () {})
            ],
          ),
        ),
      ),
    );
  }

  Future _picImageFormGallery() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (returnedImage == null) return;
    setState(() {
      _selectedImage = File(returnedImage!.path);
    });
  }
}
