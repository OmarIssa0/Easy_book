import 'package:easy_book/features/details/presentation/views/widgets/color_background.dart';
import 'package:easy_book/features/details/presentation/views/widgets/info_book.dart';
import 'package:easy_book/features/details/presentation/views/widgets/info_news_image.dart';
import 'package:easy_book/features/details/presentation/views/widgets/info_writing.dart';
import 'package:easy_book/features/details/presentation/views/widgets/item_card_details.dart';
import 'package:easy_book/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Stack(
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
                  const InfoBook(),
                  SizedBox(
                    height: 30.h,
                  ),
                  const InfoNewsImage(),
                  SizedBox(
                    height: 16.h,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
