import 'package:easy_book/core/utils/widgets/custom_error_widget.dart';
import 'package:easy_book/core/utils/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: CustomImageBook(imageUrl: ''),
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
