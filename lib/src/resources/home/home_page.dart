import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homework_flutter/src/widgets/filter.dart';
import 'package:homework_flutter/src/widgets/home_app_bar.dart';
import 'package:homework_flutter/src/widgets/item_poduct_list.dart';
import 'package:homework_flutter/src/widgets/search_product.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff9f9f9),
      body: ListView(
        children: [
          HomeAppPage(),
          SearchProductPage(),
          Filter(),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Image.asset("assets/voucher1.png"),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xff4392f9),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Deal of the Day",
                          style: GoogleFonts.montserrat(
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.lock_clock_outlined,
                                color: Color(0xffffffff)),
                            SizedBox(width: 5),
                            Text(
                              "22h 55m 20s remaining",
                              style: GoogleFonts.montserrat(
                                color: Color(0xffffffff),
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Handle button press
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff4392f9),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(
                            color: Colors.white,
                            width: 1,
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('View all',
                              style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              )),
                          Icon(Icons.arrow_forward, color: Color(0xffffffff))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          ItemProductList()
        ],
      ),
    );
  }
}
