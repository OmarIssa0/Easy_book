import 'package:easy_book/core/utils/styles.dart';
import 'package:easy_book/features/onboard/presentation/views/widgets/app_bar_onboard.dart';
import 'package:easy_book/features/onboard/presentation/views/widgets/svg_image_onboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageViewOneOnboard extends StatelessWidget {
  const PageViewOneOnboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 18, horizontal: 6),
          child: AppBarOnboard(),
        ),
        const SvgImage(),
        SizedBox(
          height: 107.h,
        ),
        SizedBox(
          width: 328.w,
          height: 86.h,
          child: Column(
            children: [
              Text(
                'Only Books Can Help You',
                textAlign: TextAlign.center,
                style: Styles.kTextStyle24,
              ),
              SizedBox(
                height: 14.h,
              ),
              Text(
                'Books can help you to increase your knowledge and become more successfully.',
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
