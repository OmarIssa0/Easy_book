import 'package:easy_book/core/utils/app_routter.dart';
import 'package:easy_book/features/home/presentation/views/widgets/custom_image_book.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/widgets/custom_error_widget.dart';
import '../../../../../core/utils/widgets/custom_loading_indicator.dart';
import '../../../../home/data/models/book_model/book_model.dart';
import '../../../../home/presentation/manger/search_books_cubit/search_books_cubit.dart';

class ListViewDataSearch extends StatelessWidget {
  const ListViewDataSearch({super.key, this.bookModel});

  final BookModel? bookModel;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBooksCubit, SearchBooksState>(
      builder: (context, state) {
        if (state is SearchBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .21,
            child: ListView.builder(
              itemCount: state.booksValue.length,
              // physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: ItemSearch(
                    imageUrl:
                        // bookModel?.volumeInfo?.imageLinks?.thumbnail ?? '',
                        state.booksValue[index].volumeInfo?.imageLinks
                                ?.thumbnail ??
                            '',
                    bookModel: state.booksValue[index],
                    // state.booksValue.first.volumeInfo?.imageLinks
                    //         ?.thumbnail?[0] ??
                    //     ''
                    // bookModel?.searchInfo?.textSnippet![0] ?? '',
                  ),
                  //  ItemBuilderRecommanded(
                  //   imageUrl:
                  //       state.books[index].volumeInfo?.imageLinks!.thumbnail ??
                  //           '',
                  //   bookModel: state.books[index],
                  // bookModel: bookModel,
                );
              },
            ),
          );
        } else if (state is SearchBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}

class ItemSearch extends StatelessWidget {
  const ItemSearch(
      {super.key, required this.bookModel, required this.imageUrl});

  final BookModel bookModel;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(RouterApp.kDetailsView, extra: bookModel);
      },
      child: CustomImageBook(
        imageUrl: imageUrl,
      ),
    );
  }
}
