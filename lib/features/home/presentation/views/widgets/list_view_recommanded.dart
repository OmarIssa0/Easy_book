import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_book/core/utils/app_routter.dart';
import 'package:easy_book/core/utils/widgets/custom_error_widget.dart';
import 'package:easy_book/core/utils/widgets/custom_loading_indicator.dart';
import 'package:easy_book/features/home/data/models/book_model/book_model.dart';
import 'package:easy_book/features/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ListViewRecommanded extends StatelessWidget {
  const ListViewRecommanded({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
        builder: (context, state) {
      if (state is FeaturedBooksSuccess) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * .21,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: ItemBuilderRecommanded(
                    imageUrl:
                        state.books[index].volumeInfo!.imageLinks!.thumbnail!),
              );
            },
            itemCount: state.books.length,
          ),
        );
      } else if (state is FeaturedBooksFailure) {
        return CustomErrorWidget(errMessage: state.errMessage);
      } else {
        return const CustomLoadingIndicator();
      }
    });
  }
}

class ItemBuilderRecommanded extends StatelessWidget {
  const ItemBuilderRecommanded({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(RouterApp.kDetailsView);
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: AspectRatio(
          aspectRatio: 2.6 / 3.5,
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            fit: BoxFit.fill,
            errorWidget: (context, url, error) {
              return const Icon(Icons.error);
            },
          ),
        ),
      ),
    );
  }
}
