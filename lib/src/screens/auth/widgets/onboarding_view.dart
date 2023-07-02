import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/text_style.dart';
import '../../../controllers/onboarding_controller.dart';

class OnboardingView extends StatelessWidget {
  final int slider;
  final OnboardingController controller;
  final String image;

  const OnboardingView({
    super.key,
    required this.slider,
    required this.controller,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Nibh pretium nibh sit odio ipsum rhoncus quis vitae a.",
              style: pSemiBold18.copyWith(
                color: ConstColors.whiteColor,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Ullamcorper imperdiet urna id non sed est sem. ",
              style: pRegular14.copyWith(color: ConstColors.whiteColor),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 10,
                  width: slider == 0 ? 40 : 10,
                  decoration: BoxDecoration(
                    color: slider == 0
                        ? ConstColors.blackColor
                        : ConstColors.greyColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                SizedBox(
                  width: 7,
                ),
                Container(
                  height: 10,
                  width: slider == 1 ? 40 : 10,
                  decoration: BoxDecoration(
                    color: slider == 1
                        ? ConstColors.blackColor
                        : ConstColors.greyColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                SizedBox(
                  width: 7,
                ),
                Container(
                  height: 10,
                  width: slider == 2 ? 40 : 10,
                  decoration: BoxDecoration(
                    color: slider == 2
                        ? ConstColors.blackColor
                        : ConstColors.greyColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 45,
            ),
            SizedBox(
              height: 60,
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(ConstColors.blackColor),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(ConstColors.whiteColor),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0))),
                ),
                onPressed: () {
                  controller.nextPage();
                },
                child: Text(
                  "Continue",
                  style: pRegular14.copyWith(
                      fontSize: 16, color: ConstColors.whiteColor),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ));
  }
}
