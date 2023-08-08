import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sneakerhub_app/src/constants/colors.dart';
import 'package:sneakerhub_app/src/constants/images.dart';
import 'package:sneakerhub_app/src/constants/sizes.dart';
import 'package:sneakerhub_app/src/constants/text_style.dart';
import 'package:sneakerhub_app/src/controllers/signin_controller.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final SigninController signinController = Get.put(SigninController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.whiteColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        elevation: 0,
        leading: Container(
          padding: EdgeInsets.all(5),
          child: CircleAvatar(
            backgroundColor: ConstColors.brokenWhiteColor,
            child: IconButton(
              onPressed: () => Get.back(),
              icon: Icon(
                Icons.arrow_back,
                color: ConstColors.deepColor,
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: CustomSizes.screenSidePadding,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 28,
            ),
            Text(
              "Welcome Back! 👋🏻",
              style: pBold20.copyWith(
                fontSize: 24,
                color: ConstColors.blackColor,
              ),
            ),
            Text(
              "Please fill up and login to your account",
              style: pRegular14.copyWith(
                color: ConstColors.blackColor,
              ),
            ),
            const SizedBox(
              height: 48,
            ),
            Text(
              "Email Address",
              style: pSemiBold18.copyWith(
                fontSize: 14,
                color: ConstColors.blackColor,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0xffF8F8F8),
                borderRadius: BorderRadius.circular(
                  20,
                ),
              ),
              child: TextFormField(
                controller: signinController.usernameCtr,
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffF8F8F8),
                    ),
                  ),
                  hintText: "Enter your email address",
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              "Password",
              style: pSemiBold18.copyWith(
                fontSize: 14,
                color: ConstColors.blackColor,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Obx(
              () => Container(
                decoration: BoxDecoration(
                  color: Color(0xffF8F8F8),
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                ),
                child: TextFormField(
                  controller: signinController.passwordCtr,
                  decoration: InputDecoration(
                    hintText: "Enter your password",
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffF8F8F8),
                      ),
                    ),
                    suffixIcon: InkWell(
                      child: Icon(
                        signinController.hidePass.value
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                      onTap: () {
                        signinController.hidePass.value
                            ? signinController.hidePass.value = false
                            : signinController.hidePass.value = true;
                        print(signinController.hidePass.value);
                      },
                    ),
                  ),
                  obscureText: signinController.hidePass.value,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Or Sign up with",
                style: pRegular14.copyWith(
                  color: Color(0xFF7F7E83),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: ConstColors.brokenWhiteColor,
                  child: Image.asset(
                    DefaultImages.googleIcon,
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: ConstColors.deepColor,
                  child: Image.asset(
                    DefaultImages.appleIcon,
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Color(0xFF4267B2),
                  child: Image.asset(
                    DefaultImages.facebookIcon,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 100,
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
                  // Get.toNamed(RouteName.login);
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
            const SizedBox(
              height: 20,
            ),
            Text(
              "Don’t have an account ?",
              style: pThin20,
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
