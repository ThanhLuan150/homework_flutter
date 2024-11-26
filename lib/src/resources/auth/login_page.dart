import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 80),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 70, 0),
                child: Text(
                  "Welcome Back!",
                  style: GoogleFonts.montserrat(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff000000)),
                ),
              ),
              const SizedBox(height: 40),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.person),
                  hintText: "Username or Email",
                  fillColor: Color(0xfff3f3f3),
                  filled: true,
                  hintStyle: GoogleFonts.montserrat(
                    color: Color(0xff676767),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(color: Color(0xffa8a8a9)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(color: Color(0xffa8a8a9)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(
                        color: Color(0xff676767),
                        width: 1.0), // Tùy chỉnh border khi focus
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock),
                  hintText: "Password",
                  fillColor: Color(0xfff3f3f3),
                  filled: true,
                  hintStyle: GoogleFonts.montserrat(
                    color: Color(0xff676767),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(color: Color(0xffa8a8a9)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(color: Color(0xffa8a8a9)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(
                        color: Color(0xff676767),
                        width: 1.0), // Tùy chỉnh border khi focus
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.visibility),
                  ),
                ),
              ),
              // const SizedBox(height: 4),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "forgetPasswordPage");
                  },
                  child: Text(
                    "Forgot Password?",
                    style: GoogleFonts.montserrat(
                        color: Color(0xfff83758), fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xfff83758),
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  onPressed: () {
                      Navigator.pushNamed(context, "homePage");
                  },
                  child: Text(
                    "Login",
                    style: GoogleFonts.montserrat(
                        fontSize: 20,
                        color: Color(0xffffffff),
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "- OR Continue with -",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                          fontSize: 12,
                          color: Color(0xff575757),
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Google Icon Button
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Color(0xfff8375b), width: 1),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/gg.png'),
                      iconSize: 40,
                    ),
                  ),
                  const SizedBox(width: 16),
                  // Apple Icon Button
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Color(0xfff8375b), width: 1),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/apple.png'),
                      iconSize: 40,
                    ),
                  ),
                  const SizedBox(width: 16),
                  // Facebook Icon Button
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Color(0xfff8375b), width: 1),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/facebook.png'),
                      iconSize: 40,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Create An Account ",
                    style: GoogleFonts.montserrat(
                        fontSize: 14,
                        color: Color(0xff575757),
                        fontWeight: FontWeight.w400),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "registerPage");
                    },
                    child: Text(
                      "Sign Up",
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        color: Color(0xfff83758),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
