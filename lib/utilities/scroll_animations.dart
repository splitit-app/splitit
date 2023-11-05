import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

extension DefaultAnimationValues on PageController {
  Future<void> animateToPageWithDefaults(int page) => animateToPage(
        page,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
}

const expandingDotsEffect = ExpandingDotsEffect(
  activeDotColor: Colors.black54,
  dotHeight: 12.0,
  dotWidth: 15.0,
  expansionFactor: 2.5,
);
