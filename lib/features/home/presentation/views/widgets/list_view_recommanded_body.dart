import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_book/features/home/data/models/book_model/book_model.dart';
import 'package:easy_book/features/home/presentation/views/widgets/custom_image_book.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_routter.dart';

class ItemBuilderRecommanded extends StatelessWidget {
  const ItemBuilderRecommanded(
      {super.key, required this.imageUrl, required this.bookModel});

  final String imageUrl;
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(RouterApp.kDetailsView, extra: bookModel);
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: AspectRatio(
          aspectRatio: 2.6 / 3.5,
          child: CustomImageBook(imageUrl: imageUrl),
          // CachedNetworkImage(
          //   imageUrl: imageUrl,
          //   fit: BoxFit.fill,
          //   errorWidget: (context, url, error) {
          //     return const Icon(Icons.error);
          //   },
          // ),
        ),
      ),
    );
  }
}
