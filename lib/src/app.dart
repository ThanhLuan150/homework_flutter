import 'package:flutter/material.dart';
import 'package:homework_flutter/src/navigation/app_routes.dart';
// import 'package:toturial_app/src/resources/landing_page.dart';
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor:  Colors.white,
      ),
      routes: AppRoutes.getRoutes(),
    );
  }
}