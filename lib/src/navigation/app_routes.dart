import 'package:flutter/material.dart';
import 'package:homework_flutter/src/bottomTab/bottomTap.dart';
import 'package:homework_flutter/src/resources/auth/forgetpassword_page.dart';
import 'package:homework_flutter/src/resources/auth/login_page.dart';
import 'package:homework_flutter/src/resources/auth/register_page.dart';
import 'package:homework_flutter/src/resources/get_start/get_start.dart';
import 'package:homework_flutter/src/resources/landing/landing_page.dart';
import 'package:homework_flutter/src/resources/landing/landing_view.dart';
import 'package:homework_flutter/main.dart';

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
