import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  final idController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  void signIn() {
    if (passwordController.text == confirmPasswordController.text) {
      print('Account Created for ${firstNameController.text} ${lastNameController.text}');
    } else {
      Get.snackbar('Error', 'Passwords do not match');
    }
  }
}