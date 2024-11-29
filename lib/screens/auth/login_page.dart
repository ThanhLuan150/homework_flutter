import 'package:flutter/material.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 70, 0),
                child: Text(
                  "Welcome Back!",
                  style: TextStyle(
                    fontSize: 36,
                    color: Color(0xff000000),
                    fontFamily: 'Montserrat',
                     fontVariations: [
                          FontVariation('wght', 700),  
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 40),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.person),
                  hintText: "Username or Email",
                  fillColor: Color(0xfff3f3f3),
                  filled: true,
                  hintStyle: const TextStyle(
                    color: Color(0xff676767),
                    fontSize: 14,
                    fontVariations: [
                        FontVariation('wght', 500),
                    ],
                    fontFamily: 'Montserrat',
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
                    borderSide: const BorderSide(
                        color: Color(0xff676767),
                        width: 1.0), 
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
                  hintStyle: const TextStyle(
                    color: Color(0xff676767),
                    fontSize: 14,
                   fontVariations: [
                      FontVariation('wght', 500), 
                    ],
                    fontFamily: 'Montserrat',
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: const BorderSide(color: Color(0xffa8a8a9)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: const BorderSide(color: Color(0xffa8a8a9)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: const BorderSide(
                        color: Color(0xff676767),
                        width: 1.0), 
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
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(
                      color: Color(0xfff83758),
                     fontVariations: [
                      FontVariation('wght', 400), 
                    ],
                      fontFamily: 'Montserrat',
                    ),
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
                    Navigator.pushNamed(context, "getStartPage");
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0xffffffff),
                       fontVariations: [
                        FontVariation('wght', 600), 
                    ],
                        fontFamily: 'Montserrat',
                      ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "- OR Continue with -",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff575757),
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Montserrat',
                        fontVariations: [
                            FontVariation('wght', 500),  
                      ],
                    ),
                  ),
                ],
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
                      icon: Image.asset('assets/image/gg.png'),
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
                      icon: Image.asset('assets/image/apple.png'),
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
                      icon: Image.asset('assets/image/facebook.png'),
                      iconSize: 40,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Create An Account ",
                    style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff575757),
                        fontVariations: [
                          FontVariation('wght', 400),
                        ],
                        fontFamily: 'Montserrat',
                      ),     
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "registerPage");
                    },
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xfff83758),
                        fontVariations: [
                          FontVariation('wght', 600), 
                          ],
                        fontFamily: 'Montserrat',
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
