import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_book/core/utils/service_locatro.dart';
import 'package:easy_book/core/utils/widgets/custom_error_widget.dart';
import 'package:easy_book/core/utils/widgets/custom_loading_indicator.dart';
import 'package:easy_book/features/details/presentation/views/widgets/color_background.dart';
import 'package:easy_book/features/details/presentation/views/widgets/info_book.dart';
import 'package:easy_book/features/details/presentation/views/widgets/info_news_image.dart';
import 'package:easy_book/features/details/presentation/views/widgets/info_writing.dart';
import 'package:easy_book/features/details/presentation/views/widgets/item_card_details.dart';
import 'package:easy_book/features/details/presentation/views/widgets/similar_books_list_view.dart';
import 'package:easy_book/features/home/data/models/book_model/book_model.dart';
import 'package:easy_book/features/home/data/repos/home_repo_impl.dart';
import 'package:easy_book/features/home/presentation/manger/search_books_cubit/search_books_cubit.dart';
import 'package:easy_book/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:easy_book/features/home/presentation/views/widgets/custom_image_book.dart';
import 'package:easy_book/features/home/presentation/views/widgets/list_view_recommanded.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Stack(
            children: [
              const ColorBackground(),
              Column(
                children: [
                  const CustomAppBarHomeView(
                    text: '',
                    color: Colors.white,
                  ),
                  ItemImageDetailsView(
                    bookModel: bookModel,
                  ),
                  SizedBox(
                    height: 29.h,
                  ),
                  InfoWriting(
                    bookModel: bookModel,
                  ),
                  SizedBox(
                    height: 48.h,
                  ),
                  InfoBook(
                    bookModel: bookModel,
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  // const InfoNewsImage(),
                  SizedBox(
                    height: 16.h,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: ListViewSimilar(),
                  ),
                  // ListViewRecommanded(),
                  SizedBox(
                    height: 16.h,
                  ),
                ],
              ),
            ],
          ),
        ),
        // const SliverToBoxAdapter(
        //   child:  ListViewSimilar(),
        //   // child: ListViewRecommanded(),
        // ),
      ],
    );
  }
}

class DataSearch extends SearchDelegate {
  // List name = ["omar ", 'basel', 'jamal', 'issa', 'test'];

  BookModel bookModel = const BookModel();
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = bookModel.searchInfo!.textSnippet![0];
        },
        icon: const Icon(Icons.close),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text('$query');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // List filterNames =
    // name.where((element) => element.contains(query)).toList();

    // BlocProvider.of<SearchBooksCubit>(context).fetchSearchBooks(value: query);/

    return BlocProvider(
      create: (context) => SearchBooksCubit(getIt.get<HomeRepoImpl>()),
      child: BlocConsumer<SearchBooksCubit, SearchBooksState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is SearchBooksSuccess) {
            return ListView.builder(
              // itemCount: query == '' ? state.booksValue : state,
              // itemCount: state.booksValue.indexOf(),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    // query = query == '' ? name[index] : filterNames[index];
                    // query = query == ''
                    //     ? state.booksValue[index]
                    //     : bookModel.volumeInfo?.imageLinks?.thumbnail![0];
                    showResults(context);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: state.booksValue == ''
                        ? Text(
                            '${bookModel.searchInfo!.textSnippet![index]}',
                            style: const TextStyle(fontSize: 25),
                          )
                        : Text(
                            '${bookModel.volumeInfo}',
                            style: const TextStyle(
                              fontSize: 25,
                            ),
                          ),
                  ),
                );
              },
            );
          } else if (state is SearchBooksFailure) {
            return CustomErrorWidget(errMessage: state.errMessage);
          } else {
            return const CustomLoadingIndicator();
          }
        },
      ),
    );
  }
}
