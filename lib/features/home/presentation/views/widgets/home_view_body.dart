import 'package:easy_book/core/utils/assets.dart';
import 'package:easy_book/core/utils/color_app.dart';
import 'package:easy_book/core/utils/styles.dart';
import 'package:easy_book/features/home/presentation/views/widgets/card_item.dart';
import 'package:easy_book/features/home/presentation/views/widgets/custom_app_bar.dart';
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
                    const CustomAppBarHomeView(),
                    const CardCustom(),
                    SizedBox(
                      height: 45.h,
                    ),
                    Text(
                      'Recommanded for you',
                      style: Styles.kTextStyle20,
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
        SliverToBoxAdapter(
          child: TestListView(),
        ),
      ],
    );
  }
}

class ListViewPopularBook extends StatelessWidget {
  const ListViewPopularBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Material(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 5,
        child: Container(
          height: 116.h,
          width: 388.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Image.asset(
                  'assets/images/product_cm3yDQc2KdBpIadKmwNGTQ0UaAXHeb.jpg',
                  width: 65,
                  height: 86,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.height * .17,
                height: 68.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'The Steal Like An Artist',
                      style: Styles.kTextStyle14.copyWith(
                        fontWeight: FontWeight.w700,
                        color: ColorApp.kColorText,
                        fontSize: 12.sp,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Text(
                      'Austin Kleon',
                      style: Styles.kTextStyle10.copyWith(
                        color: ColorApp.kColorText,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "5.0",
                          style: Styles.kTextStyle8.copyWith(
                            fontWeight: FontWeight.w700,
                            color: const Color(0xffF24F09),
                          ),
                        ),
                        Text(
                          "| Based on 23k Reviews",
                          style: Styles.kTextStyle8.copyWith(
                            fontWeight: FontWeight.w100,
                            color: ColorApp.kColorText,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      r'$45.87',
                      style: Styles.kTextStyle10,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 24),
                      child: Container(
                        width: 78,
                        height: 26,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color(0xffDE7773),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: Center(
                            child: Text(
                              'Grab Now',
                              style: Styles.kTextStyle8.copyWith(
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Learn More',
                          style: Styles.kTextStyle8.copyWith(
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                            color: ColorApp.kColorText,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TestListView extends StatelessWidget {
  const TestListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 20,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return const ListViewPopularBook();
      },
    );
  }
}
