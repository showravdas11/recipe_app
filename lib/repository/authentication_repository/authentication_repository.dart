// import 'dart:ffi';

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:recipe_app/features/authentication/screens/verify_email.dart';
// import 'package:recipe_app/repository/exceptions/signup_email_password_failure.dart';
// import 'package:recipe_app/screens/welcome_screen.dart';

// class AuthenticationRepository extends GetxController {
//   static AuthenticationRepository get instance => Get.find();

//   //variables
//   final _auth = FirebaseAuth.instance;
//   late final Rx<User?> firebaseUser;

//   @override
//   void onReady() {
//     firebaseUser = Rx<User?>(_auth.currentUser);
//     firebaseUser.bindStream(_auth.userChanges());
//     ever(firebaseUser, _setInitialScreen);
//   }

//   _setInitialScreen(User? user) {
//     user == null
//         ? Get.offAll(() => WelcomeScreen())
//         : Get.offAll(() => VerifyEmailScreen());
//   }

//   Future<void> createUserWithEmailAndPassword(
//       String email, String password) async {
//     try {
//       await _auth.createUserWithEmailAndPassword(
//           email: email, password: password);
//       firebaseUser.value !=null ? Get.offAll(() => const VerifyEmailScreen()): Get.to(WelcomeScreen());
//     } on FirebaseAuthException catch (e) {
//     } catch (_) {}
//   }

//   Future<void> loginWithEmailAndPassword(
//       String email, String password) async {
//     try {
//       await _auth.signInWithEmailAndPassword(
//           email: email, password: password);
//     } on FirebaseAuthException catch (e) {
//       final ex = SignUpWIthEmailAndPasswordFailure.code(e.code);
//       print("FIREBASE AUTH EXCEPTION - ${ex.message}");
//       throw ex;
//     } catch (_) {
//       const ex  = SignUpWIthEmailAndPasswordFailure();
//       print("EXCEPTION - ${ex.message}");
//       throw ex;
//     }
//   }

//   Future<void> logout() async => await _auth.signOut();
// }
