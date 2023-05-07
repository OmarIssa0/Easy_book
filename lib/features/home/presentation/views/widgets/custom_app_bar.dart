import 'package:easy_book/core/utils/color_app.dart';
import 'package:easy_book/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomAppBarHomeView extends StatelessWidget {
  const CustomAppBarHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 32),
      child: Row(
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
          Text(
            'Book of The week',
            style: Styles.kTextStyle20,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              size: 25,
              color: ColorApp.kColorIcon,
            ),
          ),
        ],
      ),
    );
  }
}
