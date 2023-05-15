import 'package:easy_book/core/utils/color_app.dart';
import 'package:easy_book/features/search/presentation/view/widgets/search_view_body.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorApp.kColorBackground,
      body: SafeArea(
        child: SearchViewBody(),
      ),
    );
  }
}
