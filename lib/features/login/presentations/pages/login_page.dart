import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:policy_plus/core/components/custom_button.dart';
import 'package:policy_plus/core/components/custom_icon_button.dart';
import 'package:policy_plus/core/helper_class/size_config.dart';
import 'package:policy_plus/core/helper_class/spacing_helper.dart';
import 'package:policy_plus/core/helper_class/text_form_field_helper.dart';
import 'dart:ui' as ui;

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().initialize(context: context);
    SvgPicture svgFacebookPicture = SvgPicture.asset(
      "assets/login/facebook_ic.svg",
      fit: BoxFit.scaleDown,
    );
    SvgPicture svgGooglePicture = SvgPicture.asset(
      "assets/login/google_ic.svg",
      fit: BoxFit.scaleDown,
    );
    SvgPicture svgApplePicture = SvgPicture.asset(
      "assets/login/cib_apple.svg",
      fit: BoxFit.scaleDown,
    );
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onSurface,
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.blockSizeHorizontal! * 3),
        child: SingleChildScrollView(
          child: SizedBox(
            height: SizeConfig.screenHeight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/login/logo.png',
                      scale: 3,
                    ),
                    Text(
                      "PolicyPlus",
                      style: SizeHelper.textStyleHelper(
                          type: Spacing.xLarge, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizeHelper.vSpacing(vSpace: Spacing.xLarge),
                TextFormField(
                    decoration: TextFormFieldHelper.kInputDecoration(
                        context: context, label: 'Enter your email')),
                SizeHelper.vSpacing(vSpace: Spacing.medium),
                TextFormField(
                  decoration: TextFormFieldHelper.kInputDecoration(
                      context: context,
                      label: 'Enter your password',
                      icon: Icon(Icons.remove_red_eye)),
                ),
                SizeHelper.vSpacing(vSpace: Spacing.xMedium),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forget Password ?",
                      style: SizeHelper.textStyleHelper(
                          type: Spacing.xMedium, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizeHelper.vSpacing(vSpace: Spacing.medium),
                CustomButtonWidget(
                    text: 'login',
                    callback: () {
                      context.go('/home');
                    }),
                SizeHelper.vSpacing(vSpace: Spacing.xMedium),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                          height: 10,
                          thickness: 1,
                          color: Theme.of(context).colorScheme.onPrimary),
                    ),
                    Text(
                      "    Or Login with    ",
                      style: SizeHelper.textStyleHelper(
                          type: Spacing.medium, fontWeight: FontWeight.w400),
                    ),
                    Expanded(
                      child: Divider(
                          endIndent: 2.1,
                          height: 10,
                          thickness: 1,
                          color: Theme.of(context).colorScheme.onPrimary),
                    ),
                  ],
                ),
                SizeHelper.vSpacing(vSpace: Spacing.medium),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomIconButton(widget: svgFacebookPicture),
                    CustomIconButton(widget: svgGooglePicture),
                    CustomIconButton(widget: svgApplePicture),
                  ],
                ),
                SizeHelper.vSpacing(vSpace: Spacing.large),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: SizeHelper.textStyleHelper(
                          type: Spacing.xMedium, fontWeight: FontWeight.w500),
                    ),
                    InkWell(
                      onTap: () {
                        context.go('/signUp');
                      },
                      child: Text(
                        " Register Now",
                        style: SizeHelper.textStyleHelper(
                            colors: Theme.of(context).colorScheme.primary,
                            type: Spacing.xMedium,
                            fontWeight: FontWeight.w600)
                          ..copyWith(decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
