import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartItemSamples extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        for(int i = 1; i < 4; i++)
        Container(
          height: 110,
          margin: EdgeInsets.symmetric(vertical: 8,horizontal: 10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Radio( // Radio is used to show the radio button
                value: "",
                groupValue: "",
                activeColor: Color(0xFF4C53A5),
                onChanged: (index){},
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Image.asset(
                  "images/$i.png",
                  height: 70,
                  width: 70,
                ),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 12,horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // crossAxisAlignment is used to align the widgets in a row or column
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                      Text(
                        "Product Name",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF4C53A5),
                        ),
                      ),
                      Text(
                        "Price",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF4C53A5),
                        ),
                      ),
                  ],
                ),
              ),
              Spacer(),
              Padding(padding: EdgeInsets.symmetric(vertical:10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(  // BoxShadow is used to give shadow to the container
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 10,
                            ),
                          ],
                        ),
                        child:Icon(
                          CupertinoIcons.plus,
                          size: 18,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "01",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(  // BoxShadow is used to give shadow to the container
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 10,
                            ),
                          ],
                        ),
                        child:Icon(
                          CupertinoIcons.minus,
                          size: 18,
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
      ],
    );
  }
}