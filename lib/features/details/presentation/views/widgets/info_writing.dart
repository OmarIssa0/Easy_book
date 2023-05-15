import 'package:easy_book/core/utils/color_app.dart';
import 'package:easy_book/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InfoWriting extends StatelessWidget {
  const InfoWriting({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Container(
        // width: MediaQuery.of(context).size.width * 3,
        width: 350.w,
        height: 92.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 15,
                bottom: 15,
                left: 15,
                right: 16,
              ),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 34,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    'assets/images/undraw_Male_avatar_g98d__2_-removebg.png',
                    // width: 56.w,
                    // height: 56.h,
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Author',
                  style: Styles.kTextStyle10.copyWith(
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff9091A0),
                  ),
                ),
                Text(
                  'Morgan Housel',
                  style: Styles.kTextStyle18.copyWith(
                    color: ColorApp.kColorIcon,
                  ),
                ),
                Text(
                  'Best Seller of New York Times',
                  style: Styles.kTextStyle8.copyWith(
                    color: const Color(0xff9091A0),
                  ),
                ),
              ],
            ),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.only(right: 16),
              child: Icon(
                Icons.star,
                size: 17,
                color: Color(0xffC4C4C4),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
