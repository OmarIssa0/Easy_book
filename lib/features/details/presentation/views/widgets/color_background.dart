import 'package:easy_book/core/utils/color_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ColorBackground extends StatelessWidget {
  const ColorBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 304.h,
      width: 428.w,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
        color: ColorApp.kColorBackground,
      ),
    );
  }
}
