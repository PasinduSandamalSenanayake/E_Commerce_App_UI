import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/widgets/HomeAppBar.dart';
import 'package:e_commerce_app/widgets/CategoriesWidget.dart';
import 'package:e_commerce_app/widgets/ItemsWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ListView(children: [
        HomeAppBar(),
        Container(
          //height: 500,
          padding: const EdgeInsets.only(top: 15),
          decoration: const BoxDecoration(
            color: Color(0xFFEDECF2),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            )
          ),
          child: Column(
            children: [
              //Search widget
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children :[
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      height: 50,
                      width: 250,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search here......",
                        ),
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.camera_alt,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20
                ),
                child: const Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4C53A5),
                  ),
                ),
              ),
              // Categories Widget
              CategoriesWidget(),
              // Items
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: const Text(
                  "Best Selling",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4C53A5),
                  ),
                ),
              ),

              // Items Widget
              ItemsWidget(),
            ],
          ),
        ),
      ],
      ),

      bottomNavigationBar: CurvedNavigationBar(
       backgroundColor: Colors.transparent,
        onTap: (index) {
        }, // this is used to change the page when the icon is clicked. index is used to identify which icon is clicked
        height: 70,
        color: Color(0xFF4C53A5),
        items:  const [
          Icon(
              Icons.home,
              size: 30,
              color: Colors.white,
          ),
          Icon(
            Icons.shopping_cart,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.list,
            size: 30,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}