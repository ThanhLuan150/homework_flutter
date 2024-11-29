import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class ItemProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
           padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(3, (index) {
                  return Container(
                    width: 180, 
                    color: const Color(0xffffffff),
                    margin: const EdgeInsets.only(right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius:
                              const BorderRadius.vertical(top: Radius.circular(8)),
                          child: Image.asset(
                            "assets/image/MaskGroup1.png",
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Women Printed Kurta",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontVariations: [
                                    FontVariation('wght', 500), 
                                    ],
                                  fontFamily: 'Montserrat',
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(height: 4),
                              const Text(
                                "Neque porro quisquam est qui dolorem ipsum quia",
                                style: TextStyle(
                                  fontSize: 11,
                                  fontVariations: [
                                    FontVariation('wght', 400), 
                                    ],
                                  fontFamily: 'Montserrat',
                                  color: Colors.black,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(height: 8),
                              const Text(
                                "₹1500",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontVariations: [
                                  FontVariation('wght', 500), 
                                  ],
                                fontFamily: 'Montserrat',
                                  color: Colors.black,
                                ),
                              ),
                              const Row(
                                children: [
                                  Text(
                                    "₹2499",
                                    style: TextStyle(
                                      fontSize: 11,
                                      decoration: TextDecoration.lineThrough,
                                      fontVariations: [
                                        FontVariation('wght', 300), 
                                        ],
                                      fontFamily: 'Montserrat',
                                      color: Color(0xffbbbbbb),
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    "40%Off",
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontVariations: [
                                        FontVariation('wght', 400), 
                                        ],
                                      fontFamily: 'Montserrat',
                                      color: Color(0xfffe735c),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  RatingBar.builder(
                                    initialRating: 4,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: 20.0,
                                    itemPadding:
                                        const EdgeInsets.symmetric(horizontal: 1.0),
                                    itemBuilder: (context, _) => const Icon(
                                      Icons.star,
                                      color: Color(0xffedb310),
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                  const SizedBox(width: 8),
                                  const Text(
                                    "56890",
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontVariations: [
                                        FontVariation('wght', 400), 
                                        ],
                                      fontFamily: 'Montserrat',
                                      color: Color(0xffa4a9b3),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
          ),
        );
  }
}