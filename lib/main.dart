import 'package:easy_book/core/utils/app_routter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          routerConfig: RouterApp.router,
          debugShowCheckedModeBanner: false,
          theme: ThemeData.light().copyWith(
            useMaterial3: true,
            scaffoldBackgroundColor: const Color(0xffffffff),
            textTheme:
                // GoogleFonts.cairoTextTheme(ThemeData.light().textTheme),
                GoogleFonts.baiJamjureeTextTheme(ThemeData.light().textTheme),
          ),
        );
      },
    );
  }
}
