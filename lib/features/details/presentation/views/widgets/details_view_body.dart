import 'package:easy_book/features/details/presentation/views/widgets/color_background.dart';
import 'package:easy_book/features/details/presentation/views/widgets/info_book.dart';
import 'package:easy_book/features/details/presentation/views/widgets/info_news_image.dart';
import 'package:easy_book/features/details/presentation/views/widgets/info_writing.dart';
import 'package:easy_book/features/details/presentation/views/widgets/item_card_details.dart';
import 'package:easy_book/features/details/presentation/views/widgets/similar_books_list_view.dart';
import 'package:easy_book/features/home/data/models/book_model/book_model.dart';
import 'package:easy_book/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:easy_book/features/home/presentation/views/widgets/custom_image_book.dart';
import 'package:easy_book/features/home/presentation/views/widgets/list_view_recommanded.dart';
import 'package:flutter/material.dart';
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
