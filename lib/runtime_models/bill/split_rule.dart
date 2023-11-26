import 'package:flutter/material.dart';
import 'package:flutter_material_symbols/flutter_material_symbols.dart';

enum SplitRule {
  even('Even', Icon(MaterialSymbols.balance)),
  byPercentage('By Percentage', Icon(MaterialSymbols.percent)),
  byShares('By Shares', Icon(MaterialSymbols.pie_chart)),
  exact('Exact', Icon(MaterialSymbols.one_two_three_outlined));

  final String label;
  final Icon icon;
  const SplitRule(this.label, this.icon);
}
