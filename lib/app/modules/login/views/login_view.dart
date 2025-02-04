import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/login_controller.dart';

class LoginView extends StatelessWidget {
  final LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/images/background.png', // Corrected path
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            )
          ),
          // Foreground (Login Form)
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: controller.phoneController,
                  decoration: InputDecoration(labelText: 'رقم الهاتف'),
                ),
                TextField(
                  controller: controller.passwordController,
                  obscureText: true,
                  decoration: InputDecoration(labelText: 'كلمة المرور'),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: controller.login,
                  child: Text('تسجيل الدخول'),
                ),
                TextButton(
                  onPressed: () => Get.toNamed('/sign_in'),
                  child: Text('ليس لدي حساب انشاء حساب'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}