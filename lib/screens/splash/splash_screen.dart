import 'package:ecommerce_app/core/util/app_colors.dart';
import 'package:ecommerce_app/core/util/app_strings.dart';
import 'package:ecommerce_app/screens/onboarding/on_boarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen(
        backgroundColor: AppColors.primary,
        duration: const Duration(seconds: 3),
        splashScreenBody: Center(
          child: Text(
            AppStrings.appName,
            style: TextStyle(
              color: AppColors.whiteColor,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        nextScreen: const OnBoardingScreen());
  }
}
