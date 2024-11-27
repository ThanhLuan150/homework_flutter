import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homework_flutter/src/navigation/app_routes.dart';
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor:  Colors.white,
        textTheme: GoogleFonts.montserratTextTheme(),
      ),
      routes: AppRoutes.getRoutes(),
    );
  }
}