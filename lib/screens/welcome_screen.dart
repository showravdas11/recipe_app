import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:green_recipe/common/widgets/commonButton/rounded.dart';
import 'package:green_recipe/features/authentication/screens/login.dart';
import 'package:green_recipe/features/authentication/screens/post.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  
  @override
  Widget build(BuildContext context) {
    final auth = FirebaseAuth.instance;
    final user = auth.currentUser;
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Container(
        child: Column(
          children: [
            Text("Hello Showrav"),

            RoundedButton(title: "Click", onTap: (){
              if (user!=null) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => PostScreen(),));
    }else{
      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
    }
            })
          ],
        ),
      ),
    );
  }
}