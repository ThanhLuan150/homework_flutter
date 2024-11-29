import 'package:flutter/material.dart';
class ItemProductListTrending extends StatelessWidget {
  const ItemProductListTrending({super.key});

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
                    width: 150, 
                    color: const Color(0xffffffff),
                    margin: const EdgeInsets.only(right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius:
                              const BorderRadius.vertical(top: Radius.circular(8)),
                          child: Image.asset(
                            "assets/image/clock.png",
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Rabbin White Sneakers For Men and Female",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontVariations: [
                                    FontVariation('wght', 500), 
                                    ],
                                  fontFamily: 'Montserrat',
                                  color: Colors.black,
                                ),
                              ),                      
                              SizedBox(height: 8),
                              Text(
                                "₹650",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontVariations: [
                                    FontVariation('wght', 500), 
                                    ],
                                  fontFamily: 'Montserrat',
                                  color: Colors.black,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "₹1599",
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
                                    "60%Off",
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
                              SizedBox(height: 8),
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