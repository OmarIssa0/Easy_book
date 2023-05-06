import 'package:easy_book/features/onboard/presentation/views/widgets/page_onboard_three.dart';
import 'package:easy_book/features/onboard/presentation/views/widgets/page_one_onboard.dart';
import 'package:easy_book/features/onboard/presentation/views/widgets/page_tow_onboard.dart';

import 'package:flutter/material.dart';

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
