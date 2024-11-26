import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                  child: Text(
                    "All Featured",
                    style: GoogleFonts.montserrat(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
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
                      label: Text(
                        "Sort",
                        style: GoogleFonts.montserrat(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                      icon: Icon(
                        Icons.swap_vert,
                        size: 20,
                        color: Color(0xff232327),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        padding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                        elevation: 0, // Loại bỏ bóng
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6), // Góc bo 6
                        ),
                      ),
                    ),
                    SizedBox(width: 12),
                    ElevatedButton.icon(
                      onPressed: () {},
                      label: Text(
                        "Filter",
                        style: GoogleFonts.montserrat(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                      icon: Icon(
                        Icons.filter_alt_outlined,
                        size: 20,
                        color: Color(0xff232327),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        padding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 8),
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
              decoration: BoxDecoration(
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
                        Container(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "assets/Ellipse.png",
                                width: 56,
                                height: 56,
                              ),
                            ),
                            Text("Sandal",
                                style: GoogleFonts.montserrat(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF21003d),
                                ))
                          ],
                        ))
                    ],
              )),
            ),
          )
        ],
      ),
    );
  }
}
