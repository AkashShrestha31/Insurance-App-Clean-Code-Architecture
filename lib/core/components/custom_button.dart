import 'package:flutter/material.dart';
import 'package:policy_plus/core/helper_class/size_config.dart';
import 'package:policy_plus/core/helper_class/spacing_helper.dart';

class CustomButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback callback;
  final Color? backgroundColor;
  final double? height;
  final double? width;
  final Spacing? textSize;
  final double? borderRadius;
  final Color? textColor;
  final bool? isBorder;
  const CustomButtonWidget(
      {Key? key,
      required this.text,
      required this.callback,
      this.backgroundColor,
      this.borderRadius,
      this.textColor,
      this.height,
      this.isBorder = false,
      this.width,
      this.textSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(borderRadius?? SizeConfig.blockSizeHorizontal! * 2),
      color: backgroundColor ?? Theme.of(context).colorScheme.primary,
      child: InkWell(
        splashColor: Theme.of(context).colorScheme.surface,
        onTap: callback,
        child: Container(
          height: height ?? SizeConfig.screenHeight! * 0.07,
          width: width ?? SizeConfig.screenWidth,
          decoration: BoxDecoration(
              color: Colors.transparent,
              border: isBorder == true
                  ? Border.all(color: Theme.of(context).colorScheme.primary)
                  : Border.all(color: Colors.transparent)),
          child: Center(
            child: Text(
              text,
              style: SizeHelper.textStyleHelper(
                  type: textSize ?? Spacing.xMedium,
                  fontWeight: FontWeight.w500,
                  colors: textColor ?? Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
