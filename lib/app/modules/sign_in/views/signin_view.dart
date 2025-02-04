import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/signin_controller.dart';

class SignInView extends StatelessWidget {
  final SignInController controller = Get.put(SignInController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Image.asset(
            'assets/images/background.png', // Corrected path
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ), // ✅ Added missing comma here

          // Foreground (Sign-In Form)
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: controller.idController,
                  decoration: InputDecoration(labelText: 'رقم بطاقة التعريف'),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: controller.firstNameController,
                  decoration: InputDecoration(labelText: 'الاسم الاول'),
                ),
                TextField(
                  controller: controller.lastNameController,
                  decoration: InputDecoration(labelText: 'الاسم العائلي'),
                ),
                TextField(
                  controller: controller.phoneController,
                  decoration: InputDecoration(labelText: 'رقم الهاتف'),
                ),
                TextField(
                  controller: controller.passwordController,
                  obscureText: true,
                  decoration: InputDecoration(labelText: 'كلمة المرور'),
                ),
                TextField(
                  controller: controller.confirmPasswordController,
                  obscureText: true,
                  decoration: InputDecoration(labelText: 'تأكيد كلمة المرور'),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: controller.signIn,
                  child: Text('إنشاء حساب'),
                ),
                TextButton(
                  onPressed: () => Get.toNamed('/login'),
                  child: Text('لدي حساب تسجيل الدخول'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
