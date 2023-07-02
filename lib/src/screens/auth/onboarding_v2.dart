import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:sneakerhub_app/src/constants/colors.dart';
import 'package:sneakerhub_app/src/controllers/onboarding_controller.dart';

import 'widgets/onboarding_view.dart';

class OnboardingV2 extends StatelessWidget {
  OnboardingV2({super.key});
  final OnboardingController onboardingController =
      Get.put(OnboardingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.blackColor,
      body: Stack(
        children: [
          LiquidSwipe(
            pages: [
              OnboardingView(
                slider: 0,
                controller: onboardingController,
                image: onboardingController.images[0],
              ),
              OnboardingView(
                slider: 1,
                controller: onboardingController,
                image: onboardingController.images[1],
              ),
              OnboardingView(
                slider: 2,
                controller: onboardingController,
                image: onboardingController.images[2],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
