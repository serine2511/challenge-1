import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();

  void login() {
    // Placeholder for login logic
    print('Phone: ${phoneController.text}, Password: ${passwordController.text}');
  }
}