import 'package:get/get.dart';
import 'package:sneakerhub_app/src/screens/auth/onboarding.dart';

import 'route_name.dart';

class AppPage {
  static final pages = [
    // Auth
    GetPage(
      name: RouteName.onboarding,
      page: () => Onboarding(),
      transition: Transition.cupertino,
    ),
  ];
}
