import 'package:flutter/material.dart';
import 'package:homework_flutter/src/resources/auth/forgetpassword_page.dart';
import 'package:homework_flutter/src/resources/auth/login_page.dart';
import 'package:homework_flutter/src/resources/auth/register_page.dart';
import 'package:homework_flutter/src/resources/home/home_page.dart';
import 'package:homework_flutter/src/resources/landing/landing_page.dart';
import 'package:homework_flutter/src/resources/landing/landing_view.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> getRoutes() {
    return {
      "/": (context) => LandingPage(),
      "landingPageView": (context) => LandingViewPage(),
      "loginPage": (context) => LoginPage(),
      "registerPage": (context) => RegisterPage(),
      "forgetPasswordPage": (context) => ForgetPasswordPage(),
      "homePage": (context) => HomePage(),
    };
  }
}
