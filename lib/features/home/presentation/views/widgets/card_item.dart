import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_book/core/utils/app_routter.dart';
import 'package:easy_book/core/utils/color_app.dart';
import 'package:easy_book/core/utils/styles.dart';
import 'package:easy_book/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CardCustom extends StatelessWidget {
  const CardCustom({
    super.key,
    this.bookModel,
  });

  final BookModel? bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(RouterApp.kDetailsView);
      },
      child: Material(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          height: 200.h,
          width: 388.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          child: Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
                child: Material(
                  elevation: 10,
                  child: Image.asset('assets/images/Test_book.jpg'),
                  // child: CachedNetworkImage(
                  //   imageUrl: bookModel!.volumeInfo!.imageLinks!.thumbnail!,
                  //   errorWidget: (context, url, error) =>
                  //       const Icon(Icons.error),
                  // ),
                ),
              ),
              SizedBox(
                width: 226.w,
                // height: 112.h,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 30,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'The Psychology of Money',
                        style: Styles.kTextStyle14.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "The psychology of money is the study of our behavior with money. Success with money isn't about knowledge, IQ or how good you are at math. It's about behavior, and everyone is prone to certain behaviors over others.",
                        style: Styles.kTextStyle8,
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 87.w,
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
                          const SizedBox(
                            width: 15,
                          ),
                          TextButton(
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
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
