import 'package:ecommerce_app/screens/auth/login/login_screen.dart';
import 'package:ecommerce_app/screens/auth/register/register_screen.dart';
import 'package:ecommerce_app/screens/splash/splash_screen.dart';
import 'package:ecommerce_app/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String splash = '/';
  static const String login = '/login';
  static const String welcome = '/welcome';
  static const String register = '/register';
  static const String home = '/home';
  static const String profile = '/profile';
  static const String settings = '/settings';
  static const String about = '/about';
}

class AppRoutes {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      case Routes.welcome:
        return MaterialPageRoute(
          builder: (_) => const WelcomeScreen(),
        );
      case Routes.login:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      case Routes.register:
        return MaterialPageRoute(
          builder: (_) => const RegisterScreen(),
        );
      case Routes.home:
      // return MaterialPageRoute(
      //   builder: (_) => const HomeScreen(),
      // );
      case Routes.profile:
      // return MaterialPageRoute(
      //   builder: (_) => const Profile(),
      // );
      case Routes.settings:
      // return MaterialPageRoute(
      //   builder: (_) => const Settings(),
      // );
      case Routes.about:
      // return MaterialPageRoute(
      //   builder: (_) => const About(),
      // );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
