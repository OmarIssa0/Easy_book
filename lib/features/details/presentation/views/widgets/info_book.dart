import 'package:easy_book/core/utils/styles.dart';
import 'package:easy_book/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InfoBook extends StatelessWidget {
  const InfoBook({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40, right: 36),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About The Book',
            textAlign: TextAlign.start,
            style: Styles.kTextStyle18,
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            // "'The Psychology of Money' is an essential read for anyone interested in being better with money. Fast-paced and engaging, this book will help you refine your thoughts towards money. You can finish this book in a week, unlike other books that are too lengthy \n \n.The most important emotions in relation to money are fear, guilt, shame and envy. It's worth spending some effort to become aware of the emotions that are especially tied to money for you because, without awareness, they will tend to override rational thinking and drive your actions.",
            bookModel.volumeInfo!.description ?? 'Not found description',
            style: Styles.kTextStyle14.copyWith(
              color: const Color(0xff9091A0),
            ),
          ),
        ],
      ),
    );
  }
}
