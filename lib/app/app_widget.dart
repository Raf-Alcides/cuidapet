// ignore: depend_on_referenced_packages
import 'package:asuka/asuka.dart';
import 'package:cuidapet/app/core/ui/ui_config.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Modular.setObservers([Asuka.asukaHeroController]);
    Modular.setInitialRoute('/auth');

    return ScreenUtilInit(
        designSize: const Size(390, 844),
        builder: (_, __) {
          return MaterialApp.router(
            title: UiConfig.title,
            builder: (context, child) {
              return Asuka.builder(context, child);
            },
            theme: UiConfig.theme,
            routeInformationParser: Modular.routeInformationParser,
            routerDelegate: Modular.routerDelegate,
          );
        });
  }
}
