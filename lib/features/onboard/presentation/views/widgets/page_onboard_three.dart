import 'package:easy_book/core/utils/assets.dart';
import 'package:easy_book/features/onboard/presentation/views/widgets/text_and_button_onboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PageViewThreeOnboard extends StatelessWidget {
  const PageViewThreeOnboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          AssetsImage.kBackgroundOnboardThree,
          fit: BoxFit.fill,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 24.h,
            ),
            SvgPicture.asset(AssetsImage.kLogoBookOnboardThree),
            Image.asset('assets/images/Screen_2_test-removebg-preview (1).png'),
            SizedBox(
              height: 36.h,
            ),
            const TextAndButtonOnboardThree(),
          ],
        ),
      ],
    );
  }
}
