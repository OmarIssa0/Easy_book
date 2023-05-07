import 'package:easy_book/core/utils/color_app.dart';
import 'package:easy_book/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarOnboard extends StatelessWidget {
  const AppBarOnboard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.keyboard_backspace,
            color: ColorApp.kColorIcon,
            size: 25,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Skip',
            style: Styles.kTextStyle16.copyWith(
              color: ColorApp.kColorText,
              
            ),
          ),
        ),
      ],
    );
  }
}
