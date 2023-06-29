import 'package:flutter/material.dart';
import 'package:policy_plus/core/helper_class/size_config.dart';
import 'package:policy_plus/router/app_router.dart';

import 'core/themes/theme_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp.router(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        routerDelegate: AppRoute.goRouter.routerDelegate,
        routeInformationProvider: AppRoute.goRouter.routeInformationProvider,
        routeInformationParser: AppRoute.goRouter.routeInformationParser,
        theme: ThemeData(
            useMaterial3: true,
            
           colorScheme: themeColor,
            brightness: Brightness.light,
            tabBarTheme: ThemeData().tabBarTheme.copyWith(
                  labelColor: themeColor.onSurface,
                  unselectedLabelColor: themeColor.onSurfaceVariant,
                  labelPadding: const EdgeInsets.all(8),
                  indicator: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: themeColor.onSurface),
                    ),
                  ),
                )));
  }
}
