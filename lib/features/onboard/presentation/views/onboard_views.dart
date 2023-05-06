import 'package:easy_book/features/onboard/presentation/views/widgets/onboard_body_view.dart';
import 'package:flutter/material.dart';

class OnboardViews extends StatelessWidget {
  const OnboardViews({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: OnboardViewsBody(),
      ),
    );
  }
}
