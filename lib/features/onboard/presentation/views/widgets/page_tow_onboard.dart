import 'package:easy_book/core/utils/styles.dart';
import 'package:easy_book/features/onboard/presentation/views/widgets/app_bar_onboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PageViewTowOnboard extends StatelessWidget {
  const PageViewTowOnboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 18, horizontal: 6),
          child: AppBarOnboard(),
        ),
        SvgPicture.asset(
          'assets/images/_476871824.svg',
          width: 491.w,
          height: 564.73.h,
        ),
        SizedBox(
          height: 42.27.h,
        ),
        SizedBox(
          height: 104.h,
          width: 328.w,
          child: Column(
            children: [
              Text(
                'Learn Smartly',
                textAlign: TextAlign.center,
                style: Styles.kTextStyle24,
              ),
              SizedBox(
                height: 14.h,
              ),
              Text(
                'It’s 2022 and it’s time to learn every quickly and smartly. All books are storage in cloud and you can access all of them from your laptop or PC. ',
                textAlign: TextAlign.center,
                style: Styles.kTextStyle14.copyWith(
                  fontSize: 12,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
