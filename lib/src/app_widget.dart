import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:listinha/src/configuration/configuration_page.dart';
import 'package:listinha/src/home/edit_task_board.dart';
import 'package:listinha/src/home/home_page.dart';
import 'package:listinha/src/shared/stores/app_stores.dart';
import 'package:listinha/src/shared/themes/themes.dart';

import '../main.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute('/home/');
    final appStore = context.watch<AppStore>(
      (store) => store.themeMode,
    );

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      themeMode: appStore.themeMode.value,
      theme: lightTheme,
      darkTheme: darkTheme,
      routerDelegate: Modular.routerDelegate,
      routeInformationParser: Modular.routeInformationParser,
      // routes: {
      //   '/': (context) => const HomePage(),
      //   '/edit': (context) => const EditTaskBoard(),
      //   '/config': (context) => const ConfigurationPage()
      // },
    );
  }
}
