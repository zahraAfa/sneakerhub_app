import 'package:flutter/material.dart';
import 'package:sneakerhub_app/src/constants/colors.dart';
import 'package:sneakerhub_app/src/constants/images.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.blackColor,
      body: Center(
        child: Image.asset(DefaultImages.splashLogo),
      ),
    );
  }
}
