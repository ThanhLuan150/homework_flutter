import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

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
                  "Create an account",
                  style: TextStyle(
                    fontSize: 36,
                    color: Color(0xff000000),
                    fontFamily: 'Montserrat',
                    fontVariations: [
                      FontVariation('wght',
                          700), 
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
                      FontVariation('wght',
                          500), 
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
                      FontVariation('wght',
                          500),
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
              const SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock),
                  hintText: "ConfirmPassword",
                  fillColor: const Color(0xfff3f3f3),
                  filled: true,
                  hintStyle: const TextStyle(
                    color: Color(0xff676767),
                    fontSize: 14,
                    fontVariations: [
                      FontVariation('wght',
                          500), 
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
              const SizedBox(height: 16),
              const Wrap(
                children: [
                  Text(
                    "By click the ",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff676767),
                      fontVariations: [
                        FontVariation('wght',
                            400), 
                      ],
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  Text(
                    "Register",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xffff4b26),
                      fontVariations: [
                        FontVariation('wght',
                            400), 
                      ],
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  Text(
                    "button, you agree to the public offer",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff676767),
                      fontVariations: [
                        FontVariation('wght',
                            400), 
                      ],
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ],
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
                  onPressed: () {},
                  child: const Text(
                    "Create Account",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xffffffff),
                      fontVariations: [
                        FontVariation('wght',
                            600), 
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
                      fontVariations: [
                        FontVariation('wght',
                            500),
                      ],
                      fontFamily: 'Montserrat',
                    ),
                  )
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
                    "I Already Have an Account ",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff575757),
                      fontVariations: [
                        FontVariation('wght',
                            400),
                      ],
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "loginPage");
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xfff83758),
                        fontVariations: [
                          FontVariation('wght',
                              600),
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
