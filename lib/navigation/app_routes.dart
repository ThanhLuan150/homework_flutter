import 'package:flutter/material.dart';
import 'package:homework_flutter/bottomTab/bottomTap.dart';
import 'package:homework_flutter/screens/auth/forgetpassword_page.dart';
import 'package:homework_flutter/screens/auth/login_page.dart';
import 'package:homework_flutter/screens/auth/register_page.dart';
import 'package:homework_flutter/screens/get_start/get_start.dart';
import 'package:homework_flutter/screens/landing/landing_page.dart';
import 'package:homework_flutter/screens/landing/landing_view.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> getRoutes() {
    return {
      "/": (context) => LandingPage(),
      "landingPageView": (context) => LandingViewPage(),
      "loginPage": (context) => const LoginPage(),
      "registerPage": (context) => const RegisterPage(),
      "forgetPasswordPage": (context) => const ForgetPasswordPage(),
      "getStartPage": (context) => const GetStartPage(),
      "homePage": (context) => BottomTab(),
    };
  }
}
