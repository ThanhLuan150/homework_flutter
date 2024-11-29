import 'package:flutter/material.dart';
class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({super.key});

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
                  "Forget Password ?",
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
                  hintText: "Enter your email address",
                  fillColor: const Color(0xfff3f3f3),
                  filled: true,
                 hintStyle:  const TextStyle(
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
                      borderSide:
                      const BorderSide(color: Color(0xff676767), width: 1.0)),
                ),
              ),
              const SizedBox(height: 16),
              Wrap(
                alignment: WrapAlignment.start,
                spacing: 4.0,
                runSpacing: 4.0,
                children: [
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "* ",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xffff4b26),
                             fontVariations: [
                                FontVariation('wght', 400), 
                              ],
                             fontFamily: 'Montserrat',
                          ),
                        ),
                        TextSpan(
                          text:
                              "We will send you a message to set or reset your new password",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff676767),
                            fontVariations: [
                                FontVariation('wght', 400),  
                            ],
                            fontFamily: 'Montserrat',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xfff83758),
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    )
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Submit",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0xffffffff),
                        fontVariations: [
                      FontVariation('wght', 600), 
                    ],
                    fontFamily: 'Montserrat',),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
