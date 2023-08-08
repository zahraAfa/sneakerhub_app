import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/status/http_status.dart';
import 'package:sneakerhub_app/src/constants/colors.dart';

class GeneralFailure extends GetConnect {
  final String message;

  GeneralFailure([this.message = "An Unknown Error occurred."]);

  factory GeneralFailure.code(int code) {
    switch (code) {
      case HttpStatus.unauthorized:
        return GeneralFailure("$code: Is Unauthorized");
      case HttpStatus.badGateway:
        return GeneralFailure("$code: Bad Gateway");
      case HttpStatus.badRequest:
        return GeneralFailure("$code: Bad Request");
      case HttpStatus.clientClosedRequest:
        return GeneralFailure("$code: Client closed request");
      case HttpStatus.conflict:
        return GeneralFailure("$code: Conflicted");
      case HttpStatus.connectionClosedWithoutResponse:
        return GeneralFailure("$code: Connection closed without response");
      case HttpStatus.forbidden:
        return GeneralFailure("$code: Forbidden");
      case HttpStatus.tooManyRequests:
        return GeneralFailure("$code: Too many requests");
      case HttpStatus.notFound:
        return GeneralFailure("$code: Not Found");
      case HttpStatus.methodNotAllowed:
        return GeneralFailure("$code: Method Not Allowed");
      case HttpStatus.insufficientStorage:
        return GeneralFailure("$code: Insufficient Storage");
      case HttpStatus.requestTimeout:
        return GeneralFailure("$code: Request Timeout");
      case HttpStatus.internalServerError:
        return GeneralFailure("$code: Internal Server Error");
      default:
        return GeneralFailure();
    }
  }

  GeneralFailure.popErrorDialog(this.message) {
    Get.defaultDialog(
      contentPadding: const EdgeInsets.fromLTRB(25, 20, 25, 25),
      title: "Error",
      titlePadding: const EdgeInsets.only(top: 30),
      middleText: message,
      confirmTextColor: Colors.white,
      cancel: Container(
        // margin: EdgeInsets.symmetric(horizontal: 25),
        child: FilledButton(
            onPressed: () {
              Get.back();
            },
            child: const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.close),
                Text("Close"),
              ],
            )),
      ),
    );
  }

  GeneralFailure.popErrorSnackbar(this.message) {
    Get.showSnackbar(
      GetSnackBar(
        backgroundColor: ConstColors.redColor,
        title: "Error",
        message: message,
        icon: const Icon(
          Icons.close,
          color: ConstColors.whiteColor,
        ),
        duration: const Duration(seconds: 3),
      ),
    );
  }
}
