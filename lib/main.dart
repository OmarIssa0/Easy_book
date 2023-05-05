import 'package:easy_book/core/utils/app_routter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'features/splash/presentation/view/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: RouterApp.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            // systemNavigationBarContrastEnforced: false,
            // statusBarColor: Color.fromARGB(255, 158, 46, 46),
            // statusBarBrightness: Brightness.light,
            // statusBarIconBrightness: Brightness.dark,
            // systemNavigationBarColor: Color.fromARGB(255, 230, 23, 23),
            // systemNavigationBarDividerColor: Color.fromARGB(255, 52, 17, 17),
            // systemNavigationBarIconBrightness: Brightness.light,
            systemStatusBarContrastEnforced: true,
          ),
        ),
      ),
    );
  }
}
