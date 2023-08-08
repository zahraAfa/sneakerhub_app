import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:sneakerhub_app/src/constants/images.dart';
import 'package:sneakerhub_app/src/routes/route_name.dart';

class OnboardingController extends GetxController {
  RxInt pageIndex = 0.obs;
  final int maxPage = 3;
  late LiquidController liquidController = LiquidController();

  final List<String> images = [
    DefaultImages.o1,
    DefaultImages.o2,
    DefaultImages.o3,
  ];

  @override
  void onInit() {
    super.onInit();
    liquidController = LiquidController();
  }

  void nextPage() {
    print(liquidController.currentPage);
    // while (liquidController.currentPage < maxPage) {
    //   liquidController.animateToPage(page: liquidController.currentPage + 1);
    // }
    // Get.toNamed(RouteName.welcome);

    if (liquidController.currentPage < maxPage - 1) {
      liquidController.animateToPage(page: liquidController.currentPage + 1);
    } else {
      Get.toNamed(RouteName.welcome);
    }
  }
}
