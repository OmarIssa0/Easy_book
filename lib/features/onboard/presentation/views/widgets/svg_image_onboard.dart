import 'package:easy_book/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgImage extends StatelessWidget {
  const SvgImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          AssetsImage.kImageOnboardTop,
          width: 437.w,
          height: 498.92.h,
        ),
        SvgPicture.asset(
          AssetsImage.kImageOnboardButton,
          width: 395.5.w,
        ),
      ],
    );
  }
}
