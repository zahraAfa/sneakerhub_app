import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sneakerhub_app/src/constants/colors.dart';
import 'package:sneakerhub_app/src/constants/sizes.dart';
import 'package:sneakerhub_app/src/constants/text_style.dart';
import 'package:sneakerhub_app/src/routes/route_name.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: CustomSizes.screenSidePadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            SizedBox(
              height: 100,
              child: CircleAvatar(
                child: Icon(
                  Icons.shopping_basket,
                  size: 30,
                ),
              ),
            ),
            Text(
              "Enter your registered \nPhone Number to Sign Up",
              textAlign: TextAlign.center,
              style: pRegular14.copyWith(color: ConstColors.lightGreyColor),
            ),
            Spacer(),
            SizedBox(
              height: CustomSizes.buttonHeight,
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(ConstColors.blackColor),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(ConstColors.whiteColor),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                onPressed: () {
                  Get.toNamed(RouteName.register);
                },
                child: Text(
                  "Sign-up",
                  style: pRegular14.copyWith(
                    fontSize: 16,
                    color: ConstColors.whiteColor,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            SizedBox(
              height: CustomSizes.buttonHeight,
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(ConstColors.blackColor),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(ConstColors.whiteColor),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                onPressed: () {
                  Get.toNamed(RouteName.login);
                },
                child: Text(
                  "Login",
                  style: pRegular14.copyWith(
                    fontSize: 16,
                    color: ConstColors.whiteColor,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
