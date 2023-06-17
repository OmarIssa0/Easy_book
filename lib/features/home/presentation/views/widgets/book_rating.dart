import 'package:easy_book/core/utils/color_app.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, required this.rating, required this.count});

  final int rating;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          rating.toString(),
          style: Styles.kTextStyle8.copyWith(
            fontWeight: FontWeight.w700,
            color: const Color(0xffF24F09),
          ),
        ),
        Text(
          "| Based on $count Reviews",
          style: Styles.kTextStyle8.copyWith(
            fontWeight: FontWeight.w100,
            color: ColorApp.kColorText,
          ),
        ),
      ],
    );
  }
}
