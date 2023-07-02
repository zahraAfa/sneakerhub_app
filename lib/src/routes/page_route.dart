import 'package:get/get.dart';
import 'package:sneakerhub_app/src/screens/auth/onboarding.dart';
import 'package:sneakerhub_app/src/screens/auth/onboarding_v2.dart';

import 'route_name.dart';

class AppPage {
  static final pages = [
    // Auth
    // GetPage(
    //   name: RouteName.onboarding,
    //   page: () => Onboarding(),
    //   transition: Transition.cupertino,
    // ),
    GetPage(
      name: RouteName.onboardingV2,
      page: () => OnboardingV2(),
      transition: Transition.cupertino,
    ),
  ];
}
