import 'package:easy_book/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            Container(
              width: 230,
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11.r),
                color: const Color(0xffDE7773),
              ),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Get Started Now',
                  style: Styles.kTextStyle14.copyWith(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
