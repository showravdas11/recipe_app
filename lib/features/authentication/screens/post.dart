import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/common/widgets/toast/toast.dart';
import 'package:recipe_app/features/authentication/screens/login.dart'; 

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {

  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('post screen'),
        actions: [
          IconButton(onPressed: (){
            auth.signOut().then((value){
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
            }).onError((error, stackTrace){
              Utils.toastMessage(error.toString());
            });
          }, icon: Icon(Icons.logout_outlined))
        ],
      ),
    );
  }
}