import 'package:flutter/material.dart';

class HomeAppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xfff9f9f9),
      padding: EdgeInsets.fromLTRB(15, 20, 10, 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          Container( 
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xfff2f2f2)
            ),
            child: Padding(
              padding: const EdgeInsets.all(4),
              child: Icon(
                Icons.sort, size: 30, color: Color(0xFF323232)
                ),
            )
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
            child: Image.asset("assets/logo-homepage.png"),
          ),
          Image.asset("assets/user_image.png")    
        ],
      ),
    );
  }
}