import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SigninController extends GetxController {
  RxBool hidePass = true.obs;

  TextEditingController passwordCtr = TextEditingController();
  TextEditingController usernameCtr = TextEditingController();
}
