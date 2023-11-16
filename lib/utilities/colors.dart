import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:material_color_utilities/palettes/core_palette.dart';


Color seedColor = const Color.fromRGBO(38, 182, 69, 1);

Color getSurface(bool darkMode) {
  CorePalette p = CorePalette.of(seedColor.value);
  return Color(p.neutral.get(darkMode ? 6 : 98));
}

Color getSurfaceDim(bool darkMode) {
  CorePalette p = CorePalette.of(seedColor.value);
  return Color(p.neutral.get(darkMode ? 6 : 87));
}

Color getSurfaceBright(bool darkMode) {
  CorePalette p = CorePalette.of(seedColor.value);
  return Color(p.neutral.get(darkMode ? 24 : 98));
}

Color getSurfaceContainerLowest(bool darkMode) {
  CorePalette p = CorePalette.of(seedColor.value);
  return Color(p.neutral.get(darkMode ? 4 : 100));
}

Color getSurfaceContainerLow(bool darkMode) {
  CorePalette p = CorePalette.of(seedColor.value);
  return Color(p.neutral.get(darkMode ? 10 : 96));
}

Color getSurfaceContainer(bool darkMode) {
  CorePalette p = CorePalette.of(seedColor.value);
  return Color(p.neutral.get(darkMode ? 12 : 94));
}

Color getSurfaceContainerHigh(bool darkMode) {
  CorePalette p = CorePalette.of(seedColor.value);
  return Color(p.neutral.get(darkMode ? 17 : 92));
}

Color getSurfaceContainerHighest(bool darkMode) {
  CorePalette p = CorePalette.of(seedColor.value);
  return Color(p.neutral.get(darkMode ? 22 : 90));
}