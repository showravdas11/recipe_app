import 'package:flutter/material.dart';

class SignUpWIthEmailAndPasswordFailure {
  final String message;

  const SignUpWIthEmailAndPasswordFailure(
      [this.message = "An Unknown error occurred"]);

  factory SignUpWIthEmailAndPasswordFailure.code(String code) {
    switch (code) {
      case 'weak-password':
        return SignUpWIthEmailAndPasswordFailure(
            'Please enter a stronger password.');
      case 'invaild-email':
        return SignUpWIthEmailAndPasswordFailure(
            'E-mail is not valid or badly formatted.');
      case 'email-already-in-use':
        return SignUpWIthEmailAndPasswordFailure(
            'An accoun already exists for the email.');
      case 'Operation-not-allowed':
        return SignUpWIthEmailAndPasswordFailure(
            'Operation is not allowed.please contact support');
      case 'User-disabled':
        return SignUpWIthEmailAndPasswordFailure(
            'The user has been disabled');
      default:
        return SignUpWIthEmailAndPasswordFailure();
    }
  }
}
