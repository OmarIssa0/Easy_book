import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SmoothPage extends StatelessWidget {
  const SmoothPage({
    Key? key,
    required this.onLastPage,
    required PageController controller,
  })  : _controller = controller,
        super(key: key);

  final bool onLastPage;
  final PageController _controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: const Alignment(0, 0.98),
      child: onLastPage
          ? SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: const WormEffect(
                dotWidth: 0,
                dotHeight: 0,
                activeDotColor: Color.fromARGB(255, 255, 255, 255),
                dotColor: Colors.white,
                spacing: 0,
                type: WormType.normal,
              ),
            )
          : SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: const WormEffect(
                dotWidth: 37,
                dotHeight: 6,
                activeDotColor: Color(0xffDE7773),
                spacing: 10,
                type: WormType.underground,
              ),
            ),
    );
  }
}
