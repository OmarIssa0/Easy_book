import 'package:easy_book/features/details/presentation/views/widgets/color_background.dart';
import 'package:easy_book/features/details/presentation/views/widgets/item_card_details.dart';
import 'package:easy_book/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const ColorBackground(),
        Column(
          children: const [
            CustomAppBarHomeView(
              text: '',
              color: Colors.white,
            ),
            ItemImageDetailsView()
          ],
        ),
      ],
    );
  }
}

