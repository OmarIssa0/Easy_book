import 'package:easy_book/features/home/presentation/views/widgets/list_view_body_popular_books.dart';
import 'package:flutter/material.dart';

class TestListView extends StatelessWidget {
  const TestListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 20,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return const ListViewPopularBook();
      },
    );
  }
}
