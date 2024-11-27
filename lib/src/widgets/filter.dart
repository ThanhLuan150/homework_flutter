import 'package:flutter/material.dart';

class Filter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(),
                  child: const Text(
                    "All Featured",
                    style: TextStyle(
                      fontSize: 18,
                      fontVariations: [
                        FontVariation('wght', 600),
                      ],
                      fontFamily: 'Montserrat',
                      color: Color(0xFF000000),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.start, // Đặt các nút về bên trái
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {},
                      label: const Text(
                        "Sort",
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontVariations: [
                            FontVariation('wght', 400),
                          ],
                          fontFamily: 'Montserrat',
                        ),
                      ),
                      icon: const Icon(
                        Icons.swap_vert,
                        size: 20,
                        color: Color(0xff232327),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 4),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6), // Góc bo 6
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    ElevatedButton.icon(
                      onPressed: () {},
                      label: const Text(
                        "Filter",
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontVariations: [
                            FontVariation('wght', 400),
                          ],
                          fontFamily: 'Montserrat',
                          fontSize: 12,
                        ),
                      ),
                      icon: const Icon(
                        Icons.filter_alt_outlined,
                        size: 20,
                        color: Color(0xff232327),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 8),
                        elevation: 0, // Loại bỏ bóng
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6), // Góc bo 6
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 10, 0, 10),
            child: Container(
              decoration: const BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10))),
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                  child: Row(
                    children: [
                      for (int i = 1; i < 6; i++)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "assets/image/Ellipse.png",
                                width: 56,
                                height: 56,
                              ),
                            ),
                            const Text("Sandal",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontVariations: [
                                    FontVariation('wght', 400),
                                  ],
                                  fontFamily: 'Montserrat',
                                  color: Color(0xFF21003d),
                                ))
                          ],
                        )
                    ],
                  )),
            ),
          )
        ],
      ),
    );
  }
}
