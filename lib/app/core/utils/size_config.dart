import 'package:flutter/material.dart';

class SizeConfig {
  static late double screenWidth;
  static late double screenHeight;
  static late double scaleFactor;

  static void init(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    screenWidth = mediaQuery.size.width;
    screenHeight = mediaQuery.size.height;

    // You can choose height or width as base — here height is used
    scaleFactor = screenHeight / 812; // 812 is a common base height (iPhone X)
  }

  static double height(double value) => value * scaleFactor;
  static double width(double value) => value * (screenWidth / 375); // base width = 375
}