import 'package:flutter/material.dart';
import 'package:homework_flutter/src/resources/landing/landing_item.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class LandingViewPage extends StatefulWidget {
  @override
  _LandingViewPageState createState() => _LandingViewPageState();
}

class _LandingViewPageState extends State<LandingViewPage> {
  final controller = LandingItems();
  final pageController = PageController();
  int currentPage = 0; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Previous Button or Spacer
            currentPage > 0
                ? TextButton(
                    onPressed: () {
                      pageController.previousPage(
                        duration: Duration(milliseconds: 600),
                        curve: Curves.easeIn,
                      );
                    },
                    child: Text(
                      "Previous" ,
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        color : Color(0xffc4c4c4),
                        fontWeight: FontWeight.bold,
                      )
                    ),
                  )
                : SizedBox(width: 80),

            // SmoothPageIndicator
            SmoothPageIndicator(
              controller: pageController,
              count: controller.items.length,
              onDotClicked: (index) => pageController.animateToPage(
                index,
                duration: Duration(milliseconds: 600),
                curve: Curves.easeIn,
              ),
              effect: WormEffect(
                dotHeight: 12,
                dotWidth: 12,
                activeDotColor: Color(0xFF17223b),
              ),
            ),

            // Next or Get Started Button
            currentPage < controller.items.length - 1
                ? TextButton(
                    onPressed: () {
                      pageController.nextPage(
                        duration: Duration(milliseconds: 600),
                        curve: Curves.easeIn,
                      );
                    },
                    child: Text(
                      "Next",
                        style: GoogleFonts.montserrat(
                        fontSize: 14,
                        color : Color(0xfff8374b),
                        fontWeight: FontWeight.bold,
                      )),
                  )
                : TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'loginPage'); // Navigate to Login page
                    },
                    child: Text("Get Started",
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        color : Color(0xfff8374b),
                        fontWeight: FontWeight.bold,
                      )
                    ),
                  ),
          ],
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: PageView.builder(
          onPageChanged: (index) {
            setState(() {
              currentPage = index; 
            });
          },
          itemCount: controller.items.length,
          controller: pageController,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(controller.items[index].image),
                SizedBox(height: 15),
                Text(
                  controller.items[index].title,
                  style: GoogleFonts.montserrat(
                    color: Color(0xFF000000),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  textAlign: TextAlign.center,
                  controller.items[index].description,
                  style: GoogleFonts.montserrat(
                    color: Color(0xFFA8A8A9),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
