import 'package:flutter/material.dart';
import 'package:foodrecipe/page/homepage.dart';
import 'package:foodrecipe/static_constants.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Food Recipe',
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Poppins",
        textTheme: TextTheme(
          bodyLarge: MyTextStyle.bodyTextLarge(),
          displaySmall: MyTextStyle.ratingText(),
          bodySmall: MyTextStyle.bodyTextSmall(),
          displayLarge: MyTextStyle.navTextLarge(),
          displayMedium: MyTextStyle.navTextMedium(),
        )
      ),
      
    );
  }
}