import 'package:easy_book/core/utils/styles.dart';
import 'package:easy_book/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../core/utils/app_routter.dart';

class CustomButtonApp extends StatefulWidget {
  const CustomButtonApp({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomButtonApp> createState() => _CustomButtonAppState();
}

class _CustomButtonAppState extends State<CustomButtonApp> {
  savePref(String login) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString("login", login);
    print(preferences.getString('login'));
  }

  getPref() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var login = preferences.getString("login");
    if (login != null) {
      GoRouter.of(context).push(RouterApp.kHomeView);
    }
  }

  @override
  void initState() {
    getPref();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: const Color(0xffDE7773),
      ),
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: Colors.white,
          elevation: 10,
        ),
        onPressed: () {
          savePref('login');
          GoRouter.of(context).push(RouterApp.kHomeView);
        },
        child: Text(
          'Get Started Now',
          style: Styles.kTextStyle14.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
