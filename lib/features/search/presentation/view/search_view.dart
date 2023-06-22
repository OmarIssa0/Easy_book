import 'package:easy_book/core/utils/color_app.dart';
import 'package:easy_book/features/home/data/models/book_model/book_model.dart';
import 'package:easy_book/features/home/presentation/manger/search_books_cubit/search_books_cubit.dart';
import 'package:easy_book/features/search/presentation/view/widgets/search_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key, this.bookModel});
  final BookModel? bookModel;

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  void initState() {
    BlocProvider.of<SearchBooksCubit>(context).fetchSearchBooks(
      value: widget.bookModel?.searchInfo?.textSnippet![0] ?? '',
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.kColorBackground,
      body: SafeArea(
        child: SearchViewBody(
          // data: widget.bookModel?.volumeInfo?.imageLinks?.thumbnail ?? '',
          data: widget.bookModel?.searchInfo?.textSnippet![0] ?? 'error',
          // bookModel: widget.bookModel?? '',
        ),
      ),
    );
  }
}
