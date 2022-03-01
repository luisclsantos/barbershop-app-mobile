import 'package:flutter/cupertino.dart';

//*Sizes Configurations of Screen Device
//?To use, be sure to instantiate this class using: 'SizeConfig().init(context);' in the build method of the page's parent Widget
class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late double defaultSize;
  static late Orientation orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

//*Get the proportionate height as per screen size
double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  //? 812 is the layout height that designer use
  return (inputHeight / 812.0) * screenHeight;
}

//*Get the proportionate width as per screen size
double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;
  //? 375 is the layout height that designer use
  return (inputWidth / 375.0) * screenWidth;
}
