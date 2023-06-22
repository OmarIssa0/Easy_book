import 'package:easy_book/core/utils/color_app.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../home/data/models/book_model/book_model.dart';
import 'custom_button.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      elevation: 5,
      child: SizedBox(
        height: 50,
        width: 250,
        child: Row(
          children: [
            Expanded(
              child: CustomButton(
                onPressed: () async {
                  // launchCustomUrl(context, bookModel.volumeInfo.previewLink);
                },
                text: 'Free',
                backgroundColor: Colors.white,
                textColor: Colors.black,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                ),
              ),
            ),
            Expanded(
              child: CustomButton(
                onPressed: () async {
                  Uri uri = Uri.parse(bookModel.volumeInfo!.previewLink!);
                  if (await canLaunchUrl(uri)) {
                    await launchUrl(uri);
                  } else {
                    // ignore: use_build_context_synchronously
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('cannot launch'),
                      ),
                    );
                  }
                },
                // onPressed: () async {
                //   // launchCustomUrl(context, bookModel.volumeInfo.previewLink);
                // },
                fontSize: 16,
                text: getText(bookModel),
                // backgroundColor: const Color(0xffef8262),
                backgroundColor: ColorApp.kColorBackground,
                textColor: Colors.white,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String getText(BookModel bookModel) {
    if (bookModel.volumeInfo!.previewLink == null) {
      return 'Not Avaliable';
    } else {
      return 'Preview';
    }
  }
}
