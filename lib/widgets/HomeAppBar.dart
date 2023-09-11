import 'package:flutter/material.dart';
//import 'package:badges/badges.dart';

class HomeAppBar extends StatelessWidget{

  @override
  Widget build(BuildContext content){
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child:  Row(
        children: [
          Icon(
            Icons.sort,
            size: 30,
            color: Color(0xFF4C53A5),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20,
            ),
            child: Text(
              "Dp Shop",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4C53A5),
              ),
            ),
          ),
          Spacer(),
          Badge( // Badge is used to show the number of items in the cart
            //badgeColor: Colors.red,
            padding: EdgeInsets.all(7),
            // badgeContent: Text(
            //   "3",
            // ),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(content, "cartPage");
              },
              child: Icon(
                Icons.shopping_bag_outlined,
                size: 30,
                color: Color(0xFF4C53A5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}