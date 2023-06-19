import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_book/core/utils/styles.dart';
import 'package:easy_book/features/home/data/models/book_model/book_model.dart';
import 'package:easy_book/features/home/presentation/views/widgets/custom_image_book.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemImageDetailsView extends StatelessWidget {
  const ItemImageDetailsView({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 2,
      height: 134.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Image.asset(
          //   'assets/images/product_cm3yDQc2KdBpIadKmwNGTQ0UaAXHeb.jpg',
          //   height: 134.h,
          //   width: 90.w,
          // ),
          // CachedNetworkImage(
          //     imageUrl: bookModel.volumeInfo!.imageLinks?.thumbnail ?? ''),
          CustomImageBook(
              imageUrl: bookModel.volumeInfo!.imageLinks?.thumbnail ?? ''),
          SizedBox(
            width: 22.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: Text(
                  // 'The Psychology of Money',
                  bookModel.volumeInfo!.title!,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.kTextStyle14.copyWith(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
              Opacity(
                opacity: .5,
                child: Text(
                  "The psychology of money is the study\n of our behavior with money. Success with money\nisn't about knowledge, IQ or how \n good you are at math. It's about behavior,\n and everyone is prone to certain behaviors over others.",
                  // bookModel.volumeInfo!.authors![0],
                  maxLines: 3,
                  overflow: TextOverflow.clip,
                  style: Styles.kTextStyle8.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    size: 17,
                    color: Color(0xffE7B53F),
                  ),
                  const Icon(
                    Icons.star,
                    size: 17,
                    color: Color(0xffE7B53F),
                  ),
                  const Icon(
                    Icons.star,
                    size: 17,
                    color: Color(0xffE7B53F),
                  ),
                  const Icon(
                    Icons.star,
                    size: 17,
                    color: Color(0xffE7B53F),
                  ),
                  const Icon(
                    Icons.star,
                    size: 17,
                    color: Color(0xffE7B53F),
                  ),
                  SizedBox(
                    width: 6.w,
                  ),
                  Opacity(
                    opacity: .75,
                    child: Text(
                      // '(5.0)',
                      bookModel.volumeInfo!.ratingsCount?.toString() ?? '0',
                      style: Styles.kTextStyle10.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
