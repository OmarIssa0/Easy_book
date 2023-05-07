import 'dart:ffi';

import 'package:easy_book/core/utils/assets.dart';
import 'package:easy_book/core/utils/color_app.dart';
import 'package:easy_book/core/utils/styles.dart';
import 'package:easy_book/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
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
            ],
          ),
        ),
      ],
    );
  }
}

class CardCustom extends StatelessWidget {
  const CardCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
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
              padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
              child: Material(
                elevation: 10,
                child: Image.asset('assets/images/Test_book.jpg'),
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
                          width: 87,
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
    );
  }
}

// class ItemBook extends StatelessWidget {
//   const ItemBook({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       // color: Colors.red,
//       width: double.infinity,
//       height: 183.h,
//       // decoration: BoxDecoration(
//       //   borderRadius: BorderRadius.circular(15),
//       // ),
//       child: ListTile(
//         leading: Image.asset(
//           'assets/images/Test_book.jpg',
//           height: 300,
//           width: 90.w,
//         ),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(20),
//           side: const BorderSide(
//             color: Colors.black,
//           ),
//         ),
//         title: Text(
//           'The Psychology of Money',
//           style: Styles.kTextStyle14.copyWith(
//             fontWeight: FontWeight.w600,
//           ),
//         ),
//         subtitle: Column(
//           children: [
//             Text(
//               "The psychology of money is the study of our behavior with money. Success with money isn't about knowledge, IQ or how good you are at math. It's about behavior, and everyone is prone to certain behaviors over others.",
//               style: Styles.kTextStyle8,
//             ),
//             TextButton(
//               onPressed: () {},
//               child: const Text('Grab Now'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


// class PageViewTest extends StatefulWidget {
//   const PageViewTest({super.key});

//   @override
//   State<PageViewTest> createState() => _PageViewTestState();
// }

// class _PageViewTestState extends State<PageViewTest> {
//   final PageController _controller = PageController();
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           height: 180.h,
//           width: double.infinity,
//           child: PageView(
//             controller: _controller,
//             children: [
//               Container(
//                 // color: Colors.red,
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 16),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Image.asset(
//                         'assets/images/Test_book.jpg',
//                         height: 190.h,
//                         width: 98.w,
//                       ),
//                       Image.asset(
//                         'assets/images/Test_book.jpg',
//                         height: 190.h,
//                         width: 98.w,
//                       ),
//                       Image.asset(
//                         'assets/images/Test_book.jpg',
//                         height: 190.h,
//                         width: 98.w,
//                       ),
//                       Image.asset(
//                         'assets/images/Test_book.jpg',
//                         height: 190.h,
//                         width: 98.w,
//                       ),
//                       // Image.asset(
//                       //   'assets/images/Test_book.jpg',
//                       //   height: 400.h,
//                       //   width: 98.w,
//                       // ),
//                       // Image.asset(
//                       //   'assets/images/Test_book.jpg',
//                       //   height: 400.h,
//                       //   width: 98.w,
//                       // ),
//                     ],
//                   ),
//                 ),
//               ),
//               Container(
//                 color: Color.fromARGB(255, 164, 164, 164),
//               ),
//               Container(
//                 color: Colors.red,
//               ),
//             ],
//           ),
//         ),
//         SmoothPageIndicator(controller: _controller, count: 3)
//       ],
//     );
//   }
// }
