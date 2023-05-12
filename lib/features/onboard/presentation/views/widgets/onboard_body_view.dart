import 'package:easy_book/core/utils/app_routter.dart';
import 'package:easy_book/features/home/presentation/views/home_view.dart';
import 'package:easy_book/features/onboard/presentation/views/widgets/page_onboard_three.dart';
import 'package:easy_book/features/onboard/presentation/views/widgets/page_one_onboard.dart';
import 'package:easy_book/features/onboard/presentation/views/widgets/page_tow_onboard.dart';
import 'package:easy_book/features/onboard/presentation/views/widgets/smooth_page.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardViewsBody extends StatefulWidget {
  const OnboardViewsBody({super.key});

  @override
  State<OnboardViewsBody> createState() => _OnboardViewsBodyState();
}

class _OnboardViewsBodyState extends State<OnboardViewsBody> {
  final PageController _controller = PageController();
  getPref() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var login = preferences.getString("login");
    if (login != null) {
      // GoRouter.of(context).push(RouterApp.kHomeView);
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) =>const HomeView(),
          ),
          (route) => route.isFirst);
    }
  }

  @override
  void initState() {
    getPref();
    super.initState();
  }

  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              onLastPage = (index == 2);
            });
          },
          children: const [
            PageViewOneOnboard(),
            PageViewTowOnboard(),
            PageViewThreeOnboard(),
          ],
        ),
        SmoothPage(onLastPage: onLastPage, controller: _controller),
      ],
    );
  }
}
