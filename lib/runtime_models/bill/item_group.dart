import 'package:freezed_annotation/freezed_annotation.dart';

import '../user/public_profile.dart';
import 'item.dart';
import 'i_item_group.dart';
import 'split_rules/split_rule.dart';

part 'item_group.freezed.dart';

@freezed
class ItemGroup with _$ItemGroup {
  @Implements<IItemGroup>()
  factory ItemGroup({
    @Default('') String name,
    required List<PublicProfile> primarySplits,
    required List<Item> items,
    required List<SplitRule> splitRules,
    required Map<PublicProfile, double> splitBalances,
  }) = _ItemGroup;

  ItemGroup._();

  double get value => items.fold(0, (previousValue, item) => previousValue + item.value);
}
