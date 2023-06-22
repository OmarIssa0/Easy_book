import 'package:easy_book/core/utils/color_app.dart';
import 'package:easy_book/core/utils/styles.dart';
import 'package:easy_book/features/home/presentation/manger/search_books_cubit/search_books_cubit.dart';
import 'package:easy_book/features/home/presentation/views/widgets/list_view_body_popular_books.dart';
import 'package:easy_book/features/home/presentation/views/widgets/list_view_popular.dart';
import 'package:easy_book/features/search/presentation/view/widgets/list_view_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/widgets/custom_error_widget.dart';
import '../../../../../core/utils/widgets/custom_loading_indicator.dart';
import '../../../../home/data/models/book_model/book_model.dart';
import '../../../../home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({
    super.key,
    required this.data,
  });

  final String data;
  // final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TextField(
                    onChanged: (value) {
                      // value = data;
                      data == value;
                      BlocProvider.of<SearchBooksCubit>(context)
                          .fetchSearchBooks(value: value);
                    },
                    onSubmitted: (value) {
                      // value == data;
                      data == value;
                      BlocProvider.of<SearchBooksCubit>(context)
                          .fetchSearchBooks(value: value);
                      // BlocProvider.of<SearchBooksCubit>(context)
                      //     .fetchSearchBooks(value: data);
                    },
                    style: TextStyleTextField(),
                    decoration: InputDecoration(
                      enabledBorder: buildOutLineInputBorder(),
                      focusedBorder: buildOutLineInputBorder(),
                      hintText: 'Search Book...',
                      hintStyle: TextStyleTextField().copyWith(
                        fontWeight: FontWeight.w100,
                        color: Colors.white.withOpacity(.5),
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          BlocProvider.of<SearchBooksCubit>(context)
                              .fetchSearchBooks(value: data);
                        },
                        icon: const Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Search Result',
                    style: Styles.kTextStyle20.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w200,
                      fontSize: 21,
                    ),
                  ),
                ),

                const ListViewDataSearch()

                // ListViewPopular(),
              ],
            ),
          ),
        )
      ],
    );
  }

  // ignore: non_constant_identifier_names
  TextStyle TextStyleTextField() {
    return const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w300,
      overflow: TextOverflow.clip,
    );
  }

  OutlineInputBorder buildOutLineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.r),
      borderSide: const BorderSide(
        color: Colors.white,
      ),
    );
  }
}
