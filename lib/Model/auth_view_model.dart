import 'package:flutter/material.dart';

class AuthViewModel extends ChangeNotifier {
  String? userType;

  void userTypes({var key}) {
    if (key == 'As an Instructor') {
      userType = 'Instructor';
    } else if (key == 'As a student') {
      userType = 'student';
    }
    notifyListeners();
  }
}
