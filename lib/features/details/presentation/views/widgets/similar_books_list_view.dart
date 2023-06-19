import 'package:easy_book/core/utils/widgets/custom_error_widget.dart';
import 'package:easy_book/core/utils/widgets/custom_loading_indicator.dart';
import 'package:easy_book/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_routter.dart';
import '../../../../home/presentation/manger/similar_books_cubit/similar_books_cubit.dart';
import '../../../../home/presentation/views/widgets/custom_image_book.dart';

class ListViewSimilar extends StatelessWidget {
  const ListViewSimilar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.builder(
              itemCount: state.books.length,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: ItemSimilarListView(
                    imageUrl:
                        state.books[index].volumeInfo?.imageLinks!.thumbnail ??
                            '',
                    bookModel: state.books[index],
                  ),
                );
              },
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}

class ItemSimilarListView extends StatelessWidget {
  const ItemSimilarListView(
      {super.key, required this.bookModel, required this.imageUrl});

  final BookModel bookModel;
  final String imageUrl;

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
    ;
  }
}
