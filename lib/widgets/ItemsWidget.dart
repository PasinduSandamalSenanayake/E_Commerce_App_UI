import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return GridView.count(  // GridView is used to show the items in a grid view
        childAspectRatio: 0.68, // childAspectRatio is used to set the width and height of the grid view items
        physics: NeverScrollableScrollPhysics(), // NeverScrollableScrollPhysics is used to disable the scrolling of the grid view
        crossAxisCount: 2,
        shrinkWrap: true,
      children: [
        for (int i = 1; i < 8; i++)
        Container(
          padding: EdgeInsets.only(left: 15,right: 15, top: 10), // padding is used to give space from the edges of the container
          margin: EdgeInsets.symmetric(vertical: 8,horizontal: 10), // margin is used to give space from the other containers
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // mainAxisAlignment is used to align the widgets in a row or column
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color(0xFF4C53A5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "-25%",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                 Icon(
                   Icons.favorite_border,
                   color: Colors.red,
                 ),
                ],
              ),
              InkWell(  // InkWell is used to make the container clickable.
                onTap: (){
                  Navigator.pushNamed(context, 'itemPage'); // Navigator is used to navigate to different pages
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image.asset(
                      "images/$i.png",
                      height: 110,
                      width: 110,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 6),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Product Title",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Color(0xFF4C53A5),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 10),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Product Description",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$ 100",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF4C53A5),
                      ),
                    ),
                    Icon(
                      Icons.shopping_cart_checkout,
                      color: Color(0xFF4C53A5),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ],
    );
  }
}