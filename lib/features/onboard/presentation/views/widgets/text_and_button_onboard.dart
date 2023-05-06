import 'package:easy_book/core/utils/app_routter.dart';
import 'package:easy_book/core/utils/styles.dart';
import 'package:easy_book/features/onboard/presentation/views/widgets/custom_button_app.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class TextAndButtonOnboardThree extends StatelessWidget {
  const TextAndButtonOnboardThree({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .12),
      child: SizedBox(
        height: 224.h,
        width: 328.w,
        child: Column(
          children: [
            Text(
              'Book Has Power To Chnage Everything',
              textAlign: TextAlign.center,
              style: Styles.kTextStyle24.copyWith(fontSize: 20),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'We have true friend in our life and the books is that. Book has power to chnage yourself and make you more valueable.',
              textAlign: TextAlign.center,
              style: Styles.kTextStyle14.copyWith(
                fontSize: 12.sp,
              ),
            ),
            SizedBox(
              height: 33.h,
            ),
            const CustomButtonApp(),
          ],
        ),
      ),
    );
  }
}
