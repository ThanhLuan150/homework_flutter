import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.search, color: Color(0xffbbbbbb)),
            hintText: "Search any Product..",
            fillColor: Color(0xffffffff),
            filled: true,
            hintStyle: GoogleFonts.montserrat(
              color: Color(0xffbbbbbb),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide.none),
            suffixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.mic_none_outlined, color: Color(0xffbbbbbb)),
            ),
          ),
        ),
      ),
    );
  }
}
