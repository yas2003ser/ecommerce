import 'package:ecommerce_app/configs/routes/app_routes.dart';
import 'package:ecommerce_app/core/util/app_colors.dart';
import 'package:ecommerce_app/core/util/img_paths.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(ImgPath.welcomeBg,
                    fit: BoxFit.cover, width: double.infinity),
                BackButton(
                  color: AppColors.blackColor,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 120),
              child: Text(
                "Get your groceries \n with nectar",
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.login);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 20),
                    ),
                    child: Text(
                      "Sign in",
                      style:
                          TextStyle(fontSize: 20, color: AppColors.whiteColor),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.register);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 20),
                    ),
                    child: Text(
                      "Register",
                      style:
                          TextStyle(fontSize: 20, color: AppColors.whiteColor),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "or continue with",
                    style: TextStyle(
                        fontSize: 20,
                        color: AppColors.blackColor.withOpacity(0.5),
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: AppColors.blueGoogleColor,
                        child:
                            Image.asset(ImgPath.google, width: 50, height: 50),
                      ),
                      const SizedBox(width: 40),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: AppColors.blueFacebookColor,
                        child: Image.asset(ImgPath.facebook,
                            width: 50, height: 50),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
