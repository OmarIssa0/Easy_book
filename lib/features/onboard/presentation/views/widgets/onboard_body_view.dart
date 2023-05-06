import 'package:easy_book/core/utils/styles.dart';
import 'package:easy_book/features/onboard/presentation/views/widgets/page_one_onboard.dart';
import 'package:easy_book/features/onboard/presentation/views/widgets/page_tow_onboard.dart';
import 'package:easy_book/features/onboard/presentation/views/widgets/svg_image_onboard.dart';
import 'package:easy_book/features/onboard/presentation/views/widgets/text_and_button_onboard.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardViewsBody extends StatelessWidget {
  const OnboardViewsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          children: const [
            PageViewOneOnboard(),
            PageViewTowOnboard(),
            PageViewThreeOnboard(),
          ],
        ),
      ],
    );
  }
}

class PageViewThreeOnboard extends StatelessWidget {
  const PageViewThreeOnboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          'assets/images/Vector 1.svg',
          fit: BoxFit.fill,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 24.h,
            ),
            SvgPicture.asset('assets/images/Group 5.svg'),
            Column(
              children: [
                Row(
                  children: [],
                )
              ],
            ),
            const TextAndButtonOnboardThree()
          ],
        ),
      ],
    );
  }
}
