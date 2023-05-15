import 'package:easy_book/core/utils/app_routter.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ListViewRecommanded extends StatelessWidget {
  const ListViewRecommanded({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .21,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: ItemBuilderRecommanded(),
          );
        },
        itemCount: 10,
      ),
    );
  }
}

class ItemBuilderRecommanded extends StatelessWidget {
  const ItemBuilderRecommanded({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(RouterApp.kDetailsView);
      },
      child: Image.asset(
        'assets/images/product_cm3yDQc2KdBpIadKmwNGTQ0UaAXHeb.jpg',
        width: 100,
        height: 150,
      ),
    );
  }
}
