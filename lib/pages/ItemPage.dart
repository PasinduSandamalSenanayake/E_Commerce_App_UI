import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../widgets/ItemAppBar.dart';
import '../widgets/ItemBottomNavBar.dart';

class ItemPage extends StatelessWidget{

  List<Color> Clrs =[
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.purple,
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xFFEDECF2),
      body: ListView(
        children: [
          ItemAppBar(),
          Padding(
            padding: EdgeInsets.all(25),
            child: Image.asset("images/1.png"),
          ),
          Arc(  // Arc is used to make the arc shape //clippy_flutter: ^2.0.0-nullsafety.1
            arcType: ArcType.CONVEY,
            edge: Edge.TOP,
            height: 30,
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.only(
                        top: 50,
                        bottom: 20
                    ),
                      child: Row(
                        children: [
                          Text(
                            "Product Name",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF4C53A5),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 5,
                          bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           RatingBar.builder( // RatingBar is used to show the rating of the product.flutter_rating_bar: ^4.0.1
                               itemBuilder: (context, _) => Icon(
                                 Icons.favorite,
                                 color: Color(0xFF4C53A5),
                               ),
                             onRatingUpdate: (index) {},
                             initialRating: 4, // default selected rating
                             minRating: 1,
                             direction: Axis.horizontal,
                             itemCount: 5,
                             itemSize: 20,
                             itemPadding: EdgeInsets.symmetric(horizontal: 4),
                           ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow( // BoxShadow is used to give shadow to the container
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1, // spreadRadius is used to increase the shadow
                                      blurRadius: 1,
                                      offset: Offset(0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Icon(
                                  CupertinoIcons.minus,
                                  size: 18,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 7),
                                child: Text(
                                  "01",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow( // BoxShadow is used to give shadow to the container
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1, // spreadRadius is used to increase the shadow
                                      blurRadius: 1,
                                      offset: Offset(0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Icon(
                                  CupertinoIcons.plus,
                                  size: 18,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                     Padding(
                       padding: EdgeInsets.symmetric(vertical: 12),
                       child: Text(
                          "This is the more detailed description of the product. You can write the more details about the product.This is the lengthy desccriction.",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                       ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          Text(
                            "Size",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF4C53A5),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Row(
                            children: [
                              for(int i=5;i<10;i++)
                              Container(
                                height: 30 ,
                                width: 30,
                                alignment: Alignment.center,
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow( // BoxShadow is used to give shadow to the container
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1, // spreadRadius is used to increase the shadow
                                      blurRadius: 1,
                                      offset: Offset(0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Text(
                                  i.toString(),
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Color(0xFF4C53A5),
                                  ),
                                ),

                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          Text(
                            "Color",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF4C53A5),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Row(
                            children: [
                              for(int i=0;i<5;i++)
                                Container(
                                  height: 30 ,
                                  width: 30,
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.symmetric(horizontal: 5),
                                  decoration: BoxDecoration(
                                    color: Clrs[i],
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow( // BoxShadow is used to give shadow to the container
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 1, // spreadRadius is used to increase the shadow
                                        blurRadius: 1,
                                        offset: Offset(0, 3), // changes position of shadow
                                      ),
                                    ],
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
          ),
        ],
      ),
      bottomNavigationBar: ItemBottomNavBar(),
    );
  }
}