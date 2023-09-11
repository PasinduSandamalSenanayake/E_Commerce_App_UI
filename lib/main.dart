import 'package:e_commerce_app/pages/CartPage.dart';
import 'package:e_commerce_app/pages/Homepage.dart';
import 'package:e_commerce_app/pages/ItemPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // useMaterial3: true,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {  // routes is used to navigate to different pages
        '/' : (context) => const HomePage(),
        'cartPage' : (context) =>  CartPage(),
        'itemPage' : (context) =>  ItemPage(),
      },
    );
  }
}


