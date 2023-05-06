import 'package:easy_book/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_routter.dart';

class CustomButtonApp extends StatelessWidget {
  const CustomButtonApp({
    Key? key,
  }) : super(key: key);

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
