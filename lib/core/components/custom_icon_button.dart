import 'package:flutter/material.dart';
import 'package:policy_plus/core/helper_class/size_config.dart';

class CustomIconButton extends StatelessWidget {
  final Widget widget;
  const CustomIconButton({Key? key, required this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth! * 0.22,
      height: SizeConfig.screenHeight! * 0.07,
      decoration: BoxDecoration(
          borderRadius:
              BorderRadius.circular(SizeConfig.blockSizeHorizontal! * 3),
          border: Border.all(color: Theme.of(context).colorScheme.onPrimary)),
      child: widget,
    );
  }
}
