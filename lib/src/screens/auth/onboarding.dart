import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:sneakerhub_app/src/constants/colors.dart';
import 'package:sneakerhub_app/src/constants/sizes.dart';
import 'package:sneakerhub_app/src/constants/text_style.dart';
import 'package:sneakerhub_app/src/controllers/onboarding_controller.dart';

import 'widgets/onboarding_view.dart';

class Onboarding extends StatelessWidget {
  Onboarding({super.key});
  final OnboardingController onboardingController =
      Get.put(OnboardingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.blackColor,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          LiquidSwipe(
            liquidController: onboardingController.liquidController,
            pages: [
              OnboardingView(
                slider: 0,
                image: onboardingController.images[0],
              ),
              OnboardingView(
                slider: 1,
                image: onboardingController.images[1],
              ),
              OnboardingView(
                slider: 2,
                image: onboardingController.images[2],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: CustomSizes.screenSidePadding),
                child: SizedBox(
                  height: CustomSizes.buttonHeight,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          ConstColors.blackColor),
                      foregroundColor: MaterialStateProperty.all<Color>(
                          ConstColors.whiteColor),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                    onPressed: () {
                      onboardingController.nextPage();
                    },
                    child: Text(
                      "Continue",
                      style: pRegular14.copyWith(
                        fontSize: 16,
                        color: ConstColors.whiteColor,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
