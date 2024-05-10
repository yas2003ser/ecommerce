import 'package:ecommerce_app/configs/routes/app_routes.dart';
import 'package:ecommerce_app/configs/theme/app_theme.dart';
import 'package:ecommerce_app/core/util/app_strings.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appName,
      theme: lightTheme(),
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}
