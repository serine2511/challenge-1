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
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'assets/images/background.png',
              fit: BoxFit.cover,
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 20),
              child: Column(
                children: [
                  SizedBox(height: 40),
                  GestureDetector(
                    onTap: () {},
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/images/Animal Flow Fitness.jpg'),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Icon(Icons.edit, color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  buildTextField(controller.idController, 'رقم بطاقة التعريف'),
                  buildTextField(controller.firstNameController, 'الاسم الاول'),
                  buildTextField(controller.lastNameController, 'الاسم العائلي'),
                  buildTextField(controller.phoneController, 'رقم الهاتف'),
                  buildTextField(controller.passwordController, 'كلمة المرور', obscure: true),
                  buildTextField(controller.confirmPasswordController, 'تأكيد كلمة المرور', obscure: true),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: controller.signIn,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 80, vertical: 16),
                    ),
                    child: Text('إنشاء حساب', style: TextStyle(fontSize: 18)),
                  ),
                  SizedBox(height: 10),
                  TextButton(
                    onPressed: () => Get.toNamed('/login'),
                    child: Text(
                      'لدي حساب تسجيل الدخول',
                      style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTextField(TextEditingController controller, String label, {bool obscure = false}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: TextField(
        controller: controller,
        obscureText: obscure,
        textAlign: TextAlign.right,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: Colors.blue),
          ),
        ),
      ),
    );
  }
}
