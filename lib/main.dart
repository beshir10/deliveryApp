import 'package:dele/bnb.dart';
import 'package:dele/page_view/basket_page.dart';
import 'package:dele/page_view/splash_screen_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xffff9d23),

        dialogBackgroundColor: Colors.white,
        textTheme: TextTheme(titleLarge: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)
      ),
      home: Splash_Screen_view(),
    );
  }
}

