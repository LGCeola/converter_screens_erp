import 'package:flutter/material.dart';

class LoginViewModel extends ChangeNotifier {
  final TextEditingController emailController = TextEditingController(text: "");
  final TextEditingController passwordController = TextEditingController(text: "");

  bool isVisible = true;

  void emailValidator() {
    final email = emailController.text;

    final regex = RegExp(r'^[^@]+@[^@]+\.[^@]+$');

  }

  void toggleVisibility() {
    isVisible = !isVisible;
    notifyListeners();
  }
}