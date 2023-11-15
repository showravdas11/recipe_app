import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:green_recipe/common/widgets/toast/toast.dart';
import 'package:green_recipe/views/screens/login_screen/login.dart';
import 'package:iconsax/iconsax.dart';

class HomeAppbar extends StatefulWidget {
  const HomeAppbar({
    super.key,
  });

  @override
  State<HomeAppbar> createState() => _HomeAppbarState();
}

class _HomeAppbarState extends State<HomeAppbar> {
  final auth = FirebaseAuth.instance;
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "What are you\ncooking today?",
          style:
              TextStyle(fontSize: 32, fontWeight: FontWeight.bold, height: 1),
        ),
        const Spacer(),
        Card(
          child: IconButton(onPressed: (){
              auth.signOut().then((value){
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
              }).onError((error, stackTrace){
                Utils.toastMessage(error.toString());
              });
            }, icon: Icon(Icons.logout_outlined)),
        )
      ],
    );
  }
}
