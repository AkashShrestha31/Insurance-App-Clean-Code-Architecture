import 'package:flutter/material.dart';

abstract class Config {
  /// Initialize when App Starts
  void initialize({required BuildContext context});
}

class SizeConfig extends Config {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? defaultSize;
  static Orientation? orientation;
  static double? blockSizeHorizontal;
  static double? blockSizeVertical;
  static double? _safeAreaHorizontal;
  static double? _safeAreaVertical;
  static double? safeBlockHorizontal; //for text size
  static double? safeBlockVertical;
  @override
  void initialize({required BuildContext context}) {
    _mediaQueryData = MediaQuery.of(context);
    screenHeight = _mediaQueryData?.size.height;
    screenWidth = _mediaQueryData?.size.width;
    orientation = _mediaQueryData!.orientation;
    blockSizeHorizontal = screenWidth! / 100;
    blockSizeVertical = screenHeight! / 100;

    _safeAreaHorizontal =
        _mediaQueryData!.padding.left + _mediaQueryData!.padding.right;
    _safeAreaVertical =
        _mediaQueryData!.padding.top + _mediaQueryData!.padding.bottom;
    safeBlockHorizontal = (screenWidth! - _safeAreaHorizontal!) / 100;
    safeBlockVertical = (screenHeight! - _safeAreaVertical!) / 100;
  }
}
double getScreenWidth(
    {required double? portraitWidth, required double? landscapeWidth}) {
  switch (SizeConfig.orientation!) {
    case Orientation.portrait:
      return SizeConfig.screenWidth! * portraitWidth!;
    case Orientation.landscape:
      return SizeConfig.screenWidth! * landscapeWidth!;
    default:
      return 0.0;
  }
}

double getScreenHeight(
    {required double? portraitHeight, required double? landscapeHeight}) {
  switch (SizeConfig.orientation!) {
    case Orientation.portrait:
      return SizeConfig.screenHeight! * portraitHeight!;
    case Orientation.landscape:
      return SizeConfig.screenHeight! * landscapeHeight!;
    default:
      return 0.0;
  }
}
  double getHeight({required int length}) {
    if (length < 4) {
      return SizeConfig.screenHeight! * 0.37;
    } else if (length > 3 && length < 7) {
      return getScreenHeight(portraitHeight: 0.58, landscapeHeight: 1.5);
    } else {
      return SizeConfig.screenHeight! * 0.34;
    }
  }