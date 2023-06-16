import 'package:easy_book/core/utils/assets.dart';
import 'package:easy_book/core/utils/color_app.dart';
import 'package:easy_book/core/utils/styles.dart';
import 'package:easy_book/features/home/presentation/views/widgets/card_item.dart';
import 'package:easy_book/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:easy_book/features/home/presentation/views/widgets/list_view_body_popular_books.dart';
import 'package:easy_book/features/home/presentation/views/widgets/list_view_popular.dart';
import 'package:easy_book/features/home/presentation/views/widgets/list_view_recommanded.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Stack(
            fit: StackFit.passthrough,
            children: [
              SvgPicture.asset(
                AssetsImage.kBackgroundOnboardThree,
                fit: BoxFit.fill,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomAppBarHomeView(
                      text: 'Book of The week',
                      color: ColorApp.kColorIcon,
                    ),
                    const CardCustom(),
                    SizedBox(
                      height: 45.h,
                    ),
                    Text(
                      'Recommanded for you',
                      style: Styles.kTextStyle20,
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    const ListViewRecommanded(),
                    SizedBox(
                      height: 100.h,
                    ),
                    Text(
                      'Popular books',
                      style: Styles.kTextStyle20,
                    ),
                    // ListViewPopularBook(),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child: ListViewPopular(),
        ),
      ],
    );
  }
}
