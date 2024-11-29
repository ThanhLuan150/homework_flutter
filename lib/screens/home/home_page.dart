import 'package:flutter/material.dart';
import 'package:homework_flutter/commom/widgets/filter.dart';
import 'package:homework_flutter/commom/widgets/home_app_bar.dart';
import 'package:homework_flutter/commom/widgets/item_poduct_list.dart';
import 'package:homework_flutter/commom/widgets/item_product_treding.dart';
import 'package:homework_flutter/commom/widgets/search_product.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff9f9f9),
      body: ListView(
        children: [
          HomeAppPage(),
          const SearchProductPage(),
          Filter(),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Image.asset("assets/image/voucher1.png"),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xff4392f9),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Deal of the Day",
                          style: TextStyle(
                            color: Color(0xffffffff),
                            fontVariations: [
                              FontVariation('wght', 500), 
                            ],
                            fontFamily: 'Montserrat',
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
                              style: TextStyle(
                                color: Color(0xffffffff),
                                fontVariations: [
                                  FontVariation('wght', 400), 
                                ],
                                fontFamily: 'Montserrat',
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
                          side: const BorderSide(
                            color: Colors.white,
                            width: 1,
                          ),
                        ),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('View all',
                              style: TextStyle(
                                color: Colors.white,
                                fontVariations: [
                                  FontVariation('wght', 600), 
                                ],
                                fontFamily: 'Montserrat',
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
          ItemProductList(),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset("assets/image/offer.png", width: 50, height: 50),
                    const SizedBox(width: 10), // Add spacing
                    const Expanded( // Wrap the Column in Expanded
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Text(
                              "Special Offers",
                              style: TextStyle(
                                color: Color(0xff000000),
                                fontVariations: [
                                  FontVariation('wght', 500), 
                                ],
                                fontFamily: 'Montserrat',
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Padding(
                           padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Text(
                              "We make sure you get the offer you need at best prices",
                              style: TextStyle(
                                color: Color(0xff000000),
                                fontVariations: [
                                  FontVariation('wght', 300), 
                                ],
                                fontFamily: 'Montserrat',
                                fontSize: 12,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 19, 15, 0),
            child: Image.asset("assets/image/mac.png"),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xfffd5b87),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Trending Products",
                          style: TextStyle(
                            color: Color(0xffffffff),
                            fontVariations: [
                                  FontVariation('wght', 500), 
                                ],
                                fontFamily: 'Montserrat',
                            fontSize: 16,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.lock_clock_outlined,
                                color: Color(0xffffffff)),
                            SizedBox(width: 5),
                            Text(
                              "Last Date 29/02/22",
                              style: TextStyle(
                                color: Color(0xffffffff),
                                fontVariations: [
                                  FontVariation('wght', 400), 
                                ],
                                fontFamily: 'Montserrat',
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
                        backgroundColor: Color(0xfffd5b87),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: const BorderSide(
                            color: Colors.white,
                            width: 1,
                          ),
                        ),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('View all',
                              style: TextStyle(
                                color: Colors.white,
                                fontVariations: [
                                  FontVariation('wght', 600), 
                                ],
                                fontFamily: 'Montserrat',
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
          const ItemProductListTrending(),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                borderRadius: BorderRadius.circular(8),
              ),
              child:  Column(
                children: [
                  ClipRRect(
                    borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(8)),
                    child: Image.asset(
                      "assets/image/hotsale.png",
                      fit: BoxFit.cover,
                        ),
                      ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "New Arrivals",
                              style: TextStyle(
                                color: Color(0xff000000),
                                fontVariations: [
                                FontVariation('wght', 500), 
                              ],
                              fontFamily: 'Montserrat',
                                fontSize: 16,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "Summer’ 25 Collections",
                                  style: TextStyle(
                                    color: Color(0xff0000000),
                                    fontVariations: [
                                      FontVariation('wght', 400), 
                                    ],
                                    fontFamily: 'Montserrat',
                                    fontSize: 13,
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
                            backgroundColor: Color(0xfffd5b87),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                              side: const BorderSide(
                                color:Color(0xfffd5b87),
                                width: 1,
                              ),
                            ),
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('View all',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontVariations: [
                                      FontVariation('wght', 600), 
                                    ],
                                    fontFamily: 'Montserrat',
                                    fontSize: 12,
                                  )),
                              Icon(Icons.arrow_forward, color: Color(0xffffffff))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                borderRadius: BorderRadius.circular(8),
              ),
              child:  Column(
                children: [
                  ClipRRect(
                    borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(8)),
                    child: Image.asset(
                      "assets/image/shoe.png",
                      fit: BoxFit.cover,
                        ),
                      ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "up to 50% Off",
                              style: TextStyle(
                                color: Color(0xff000000),
                                fontVariations: [
                                FontVariation('wght', 700), 
                              ],
                              fontFamily: 'Montserrat',
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
