import 'package:flutter/material.dart';

extension DefaultAnimationValues on PageController {
  Future<void> animateToPageWithDefaults(int page) => animateToPage(
        page,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
}
