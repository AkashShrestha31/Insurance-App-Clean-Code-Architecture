import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:policy_plus/core/helper_class/size_config.dart';
import 'package:policy_plus/features/login/presentations/widgets/login_body_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().initialize(context: context);
    return const LoginBodyWidget();
  }
}
