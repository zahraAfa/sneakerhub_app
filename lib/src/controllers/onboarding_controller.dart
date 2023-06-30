import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sneakerhub_app/src/constants/images.dart';

class OnboardingController extends GetxController {
  RxInt pageIndex = 0.obs;
  final int maxPage = 3;
  late PageController pageController = PageController();

  final List<String> images = [
    DefaultImages.o1,
    DefaultImages.o2,
    DefaultImages.o3,
  ];

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    pageController = PageController(initialPage: 0);
  }

  void nextPage() {
    pageController.nextPage(
        duration: Duration(milliseconds: 200), curve: Curves.easeIn);
  }
}
