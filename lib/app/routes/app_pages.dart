import 'package:get/get.dart';
import '../modules/login/views/login_view.dart';
import '../modules/sign_in/views/signin_view.dart';
import 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(name: AppRoutes.login, page: () => LoginView()),
    GetPage(name: AppRoutes.signIn, page: () => SignInView()),
  ];
}
