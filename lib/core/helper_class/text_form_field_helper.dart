import 'package:flutter/material.dart';
import 'package:policy_plus/core/helper_class/size_config.dart';

class TextFormFieldHelper {
  static InputDecoration kInputDecoration(
      {required BuildContext context, required String label,Icon? icon}) {
    return InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
        fillColor: Theme.of(context).colorScheme.onPrimary,
        filled: true,
        suffixIcon: icon,
        label: Text(label),
        labelStyle: TextStyle(
            color: Colors.grey.withOpacity(0.8), fontWeight: FontWeight.w400),
        enabledBorder: OutlineInputBorder(
            borderSide:  BorderSide(color:  Theme.of(context).colorScheme.onPrimary),
            borderRadius:
                BorderRadius.circular(SizeConfig.blockSizeHorizontal! * 2)),
        focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Theme.of(context).colorScheme.primary),
            borderRadius:
                BorderRadius.circular(SizeConfig.blockSizeHorizontal! * 2)),
        border: OutlineInputBorder(
            borderSide:  BorderSide(color: Theme.of(context).colorScheme.onPrimary),
            borderRadius:
                BorderRadius.circular(SizeConfig.blockSizeHorizontal! * 2)));
  }
}
