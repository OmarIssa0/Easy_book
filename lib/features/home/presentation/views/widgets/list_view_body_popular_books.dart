import 'package:easy_book/core/utils/app_routter.dart';
import 'package:easy_book/core/utils/color_app.dart';
import 'package:easy_book/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ListViewPopularBook extends StatelessWidget {
  const ListViewPopularBook({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(RouterApp.kDetailsView);
      },
      child: Padding(
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
                      SizedBox(
                        height: 3.h,
                      ),
                      Text(
                        'Austin Kleon',
                        style: Styles.kTextStyle10.copyWith(
                          color: ColorApp.kColorText,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
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
                      SizedBox(
                        height: 4.h,
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
                          width: 78.w,
                          height: 30.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            // color: const Color(0xffDE7773),
                            color: ColorApp.kColorBackground,
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
      ),
    );
  }
}
