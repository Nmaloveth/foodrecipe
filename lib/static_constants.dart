import 'package:flutter/material.dart';

class MyTextStyle{
static TextStyle navTextLarge() {
    return const TextStyle(
      fontSize: 24, // Adjusted from 28 to correspond to "displayLarge"
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle navTextMedium() {
    return const TextStyle(
      fontSize: 20, // Adjusted from 24 to correspond to "displayMedium"
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle bodyTextLarge() {
    return const TextStyle(
      fontSize: 16, // Adjusted from 18 to correspond to "bodyLarge"
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle bodyTextSmall() {
    return const TextStyle(
        fontSize: 14,
        color: Colors.grey // Adjusted from 14 to correspond to "bodySmall",
    );
  }
    static TextStyle ratingText() {
      return const TextStyle(
          fontSize: 15,
          color: Colors.black// Adjusted from 14 to correspond to "bodySmall",
      );
  }

  static const Color darkGrey= Color(0xFF303030);
  static const Color grey= Color(0xFFA9A9A9);
  static const Color red= Color(0xFFE23E3E);
  static const Color black= Color(0xFF000000);
  
  
  }

class ConstantVariables{
  static const String titleText = "How to make french\ntoast";
  static const String user = "assets/images/user.png";
  static const String location = "assets/images/Location.png";
  static const String milkimg = "assets/images/milk.png";
  static const String breadimg = "assets/images/bread.png";
  static const String background = "assets/images/frenchtoast.png";
  static const String playbutton = "assets/images/playbutton.png";
 


  static const String userName = "Roberta Anny";
  static const String userLocation = "Bali, Indonesia";
  static const String  ingredientText= "Ingredients";
  static const String numberOfItems = "5 items";
  static const num reviews = 300;
  static const num rating = 4.5;

  static const String milk = "Milk";
  static const String bread ="Bread";
  static const String eggs = "Eggs";
  static const String flour = "Flour";
  static const String honey ="Honey";
  static const String pepper = "Pepper";

  static const String followText = "Follow";
  static const String reviewText = "Reviews";
  static const String weight = "200";
}