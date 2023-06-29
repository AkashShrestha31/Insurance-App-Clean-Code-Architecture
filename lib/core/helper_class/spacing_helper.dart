import 'package:flutter/material.dart';
import 'package:policy_plus/core/helper_class/size_config.dart';

enum Spacing {
  sSmall,
  small,
  xSmall,
  medium,
  xMedium,
  large,
  xLarge,
  xxLarge,
  xxxLarge
}

class SizeHelper {
  static TextStyle textStyleHelper(
      {required Spacing type,
      FontWeight? fontWeight,
      Color? colors,
      TextDecoration? textDecoration }) {
    switch (type) {
       case Spacing.sSmall:
        return TextStyle(
            fontSize: SizeConfig.blockSizeHorizontal!*0.6,
            fontWeight: fontWeight ?? FontWeight.w400,
            color: colors ?? Colors.black);
      case Spacing.small:
        return TextStyle(
            fontSize: SizeConfig.blockSizeHorizontal!,
            fontWeight: fontWeight ?? FontWeight.w400,
            color: colors ?? Colors.black);
      case Spacing.xSmall:
        return TextStyle(
            fontSize: SizeConfig.blockSizeHorizontal! * 2,
            fontWeight: fontWeight ?? FontWeight.w400,
            color: colors ?? Colors.black);
      case Spacing.medium:
        return TextStyle(
            fontSize: SizeConfig.blockSizeHorizontal! * 3,
            fontWeight: fontWeight ?? FontWeight.w400,
            color: colors ?? Colors.black,
            decoration: textDecoration?? TextDecoration.none);
      case Spacing.xMedium:
        return TextStyle(
            fontSize: SizeConfig.blockSizeHorizontal! * 4,
            fontWeight: fontWeight ?? FontWeight.w400,
            color: colors ?? Colors.black);
      case Spacing.large:
        return TextStyle(
            fontSize: SizeConfig.blockSizeHorizontal! * 5,
            fontWeight: fontWeight ?? FontWeight.w400,
            color: colors ?? Colors.black);
      case Spacing.xLarge:
        return TextStyle(
            fontSize: SizeConfig.blockSizeHorizontal! * 6,
            fontWeight: fontWeight ?? FontWeight.w400,
            color: colors ?? Colors.black);
      case Spacing.xxLarge:
        return TextStyle(
            fontSize: SizeConfig.blockSizeHorizontal! * 7,
            fontWeight: fontWeight ?? FontWeight.w400,
            color: colors ?? Colors.black,
            height: 1);
      case Spacing.xxxLarge:
        return TextStyle(
            fontSize: SizeConfig.blockSizeHorizontal! * 8,
            fontWeight: fontWeight ?? FontWeight.w400,
            color: colors ?? Colors.black,
            height: 1);

      default:
        return TextStyle(
            fontSize: SizeConfig.blockSizeHorizontal!,
            fontWeight: fontWeight ?? FontWeight.w400,
            color: colors ?? Colors.black);
    }
  }

  static Widget vSpacing({required Spacing vSpace}) {
    switch (vSpace) {
      case Spacing.small:
        return SizedBox(height: SizeConfig.blockSizeHorizontal!);
      case Spacing.xSmall:
        return SizedBox(height: SizeConfig.blockSizeHorizontal! * 3);
      case Spacing.medium:
        return SizedBox(height: SizeConfig.blockSizeHorizontal! * 4);
      case Spacing.xMedium:
        return SizedBox(height: SizeConfig.blockSizeHorizontal! * 6);
      case Spacing.large:
        return SizedBox(height: SizeConfig.blockSizeHorizontal! * 10);
      case Spacing.xLarge:
        return SizedBox(height: SizeConfig.blockSizeHorizontal! * 15);
      default:
        return SizedBox(height: SizeConfig.blockSizeHorizontal!);
    }
  }

  static Widget hSpacing({required Spacing hSpace}) {
    switch (hSpace) {
      case Spacing.small:
        return SizedBox(width: SizeConfig.blockSizeHorizontal!);
      case Spacing.xSmall:
        return SizedBox(width: SizeConfig.blockSizeHorizontal! * 2);
      case Spacing.medium:
        return SizedBox(width: SizeConfig.blockSizeHorizontal! * 3);
      case Spacing.xMedium:
        return SizedBox(width: SizeConfig.blockSizeHorizontal! * 4);
      case Spacing.large:
        return SizedBox(width: SizeConfig.blockSizeHorizontal! * 5);
      case Spacing.xLarge:
        return SizedBox(width: SizeConfig.blockSizeHorizontal! * 6);
      default:
        return SizedBox(width: SizeConfig.blockSizeHorizontal!);
    }
  }
}
