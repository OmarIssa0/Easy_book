import 'package:easy_book/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class InfoNewsImage extends StatelessWidget {
  const InfoNewsImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'News',
          style: Styles.kTextStyle18,
        ),
        SizedBox(
          height: 20.h,
        ),
        SvgPicture.asset('assets/images/Image_news.svg')
      ],
    );
  }
}
