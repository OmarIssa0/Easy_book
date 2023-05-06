import 'package:easy_book/core/utils/app_routter.dart';
import 'package:easy_book/core/utils/assets.dart';
import 'package:easy_book/features/home/presentation/views/home_view.dart';
import 'package:easy_book/features/onboard/presentation/views/onboard_views.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();

    navigatorHome();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SvgPicture.asset(
        AssetsImage.kSplashImage,
        fit: BoxFit.fill,
      ),
    );
  }

  void navigatorHome() {
    Future.delayed(
      const Duration(seconds: 4),
      () {
        Route _createRoute() {
          return PageRouteBuilder(
            transitionDuration: const Duration(seconds: 2),
            pageBuilder: (context, animation, secondaryAnimation) =>
                const OnboardViews(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              const begin = Offset(0.0, 5.0);
              const end = Offset.zero;
              const curve = Curves.ease;

              var tween =
                  Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

              return SlideTransition(
                position: animation.drive(tween),
                child: child,
              );
            },
          );
        }

        // GoRouter.of(context).push(_createRoute());
        Navigator.of(context).push(_createRoute());
      },
    );
  }
}
