import 'package:easy_book/core/utils/app_routter.dart';
import 'package:easy_book/core/utils/color_app.dart';
import 'package:easy_book/core/utils/styles.dart';
import 'package:easy_book/features/details/presentation/views/widgets/details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBarHomeView extends StatelessWidget {
  const CustomAppBarHomeView(
      {super.key, required this.text, required this.color});

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // IconButton(
          //   onPressed: () {},
          //   icon: Icon(
          //     Icons.keyboard_backspace,
          //     size: 25,
          //     color: color,
          //   ),
          // ),

          Text(
            text,
            style: Styles.kTextStyle20,
          ),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(RouterApp.kSearchView);
              // showSearch(
              //   context: context,
              //   delegate: DataSearch(),
              // );
            },
            icon: Icon(
              Icons.search,
              size: 25,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
