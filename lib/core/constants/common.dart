import 'package:flutter/material.dart';

double figmaDeviceHeight = 1371;
double figmaDeviceWidth = 1920;

/// Full width of the device
double screenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

/// Full height of the device
double screenHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

/// Outermost padding used on the left and right side of every page.
double outerPadding(BuildContext context) {
  return (screenWidth(context) * 85) / figmaDeviceWidth;
}

/// Outermost padding used on the left and right side of every page.
double outerPaddingr(BuildContext context) {
  return (screenWidth(context) * 65) / figmaDeviceWidth;
}