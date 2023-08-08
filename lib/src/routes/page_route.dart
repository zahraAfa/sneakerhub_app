import 'package:get/get.dart';
import 'package:sneakerhub_app/src/screens/auth/login_screen.dart';
import 'package:sneakerhub_app/src/screens/auth/onboarding.dart';
import 'package:sneakerhub_app/src/screens/auth/welcome_screen.dart';

import 'route_name.dart';

class AppPage {
  static final pages = [
    GetPage(
      name: RouteName.onboarding,
      page: () => Onboarding(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: RouteName.welcome,
      page: () => WelcomeScreen(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: RouteName.login,
      page: () => LoginScreen(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: RouteName.register,
      page: () => WelcomeScreen(),
      transition: Transition.cupertino,
    ),
  ];
}
