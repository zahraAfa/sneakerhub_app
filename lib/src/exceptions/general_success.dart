import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sneakerhub_app/src/constants/colors.dart';

class GeneralSuccess extends GetConnect {
  final String message;
  final VoidCallback? onPressed;

  GeneralSuccess([this.message = "Success", this.onPressed]);

  GeneralSuccess.popSuccessDialog(
      {required this.message, required this.onPressed, String? buttonText}) {
    Get.defaultDialog(
      contentPadding: const EdgeInsets.fromLTRB(25, 20, 25, 25),
      title: "Success",
      titlePadding: const EdgeInsets.only(top: 30),
      middleText: message,
      confirmTextColor: Colors.white,
      cancel: Container(
        // margin: EdgeInsets.symmetric(horizontal: 25),
        child: FilledButton(
            onPressed: onPressed,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.check),
                Text(buttonText ?? "Back"),
              ],
            )),
      ),
    );
  }

  GeneralSuccess.popSuccessSnackbar(
      {required this.message, required this.onPressed}) {
    Get.showSnackbar(
      GetSnackBar(
        backgroundColor: ConstColors.greenColor,
        title: "Success",
        message: message,
        icon: const Icon(
          Icons.check,
          color: ConstColors.whiteColor,
        ),
        duration: const Duration(seconds: 3),
      ),
    );
  }
}
