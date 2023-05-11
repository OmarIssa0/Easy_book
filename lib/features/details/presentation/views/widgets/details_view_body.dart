import 'package:easy_book/core/utils/color_app.dart';
import 'package:easy_book/core/utils/styles.dart';
import 'package:easy_book/features/details/presentation/views/widgets/color_background.dart';
import 'package:easy_book/features/details/presentation/views/widgets/info_book.dart';
import 'package:easy_book/features/details/presentation/views/widgets/info_writing.dart';
import 'package:easy_book/features/details/presentation/views/widgets/item_card_details.dart';
import 'package:easy_book/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const ColorBackground(),
        Column(
          children: [
            const CustomAppBarHomeView(
              text: '',
              color: Colors.white,
            ),
            const ItemImageDetailsView(),
            SizedBox(
              height: 29.h,
            ),
            const InfoWriting(),
            SizedBox(
              height: 48.h,
            ),
            InfoBook(),
          ],
        ),
      ],
    );
  }
}
