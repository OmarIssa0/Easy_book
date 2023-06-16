import 'package:dio/dio.dart';
import 'package:easy_book/core/utils/api_service.dart';
import 'package:easy_book/core/utils/app_routter.dart';
import 'package:easy_book/core/utils/service_locatro.dart';
import 'package:easy_book/features/home/data/repos/home_repo_impl.dart';
import 'package:easy_book/features/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:easy_book/features/home/presentation/manger/newset_books_cubit/newset_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setup();
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
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => FeaturedBooksCubit(
                getIt.get<HomeRepoImpl>(),
              )..fetchFeaturedBooks(),
            ),
            BlocProvider(
              create: (context) => NewsetBooksCubit(
                getIt.get<HomeRepoImpl>(),
              ),
            ),
          ],
          child: MaterialApp.router(
            routerConfig: RouterApp.router,
            debugShowCheckedModeBanner: false,
            theme: ThemeData.light().copyWith(
              useMaterial3: true,
              scaffoldBackgroundColor: const Color(0xffffffff),
              textTheme:
                  // GoogleFonts.cairoTextTheme(ThemeData.light().textTheme),
                  GoogleFonts.baiJamjureeTextTheme(ThemeData.light().textTheme),
            ),
          ),
        );
      },
    );
  }
}
