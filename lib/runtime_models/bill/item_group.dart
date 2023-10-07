import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_bs/runtime_models/user/public_profile.dart';

import 'item.dart';
import 'split_rules/split_rule.dart';

part 'item_group.freezed.dart';

@freezed
class ItemGroup with _$ItemGroup {
  factory ItemGroup({
    @Default('') String name,
    required List<PublicProfile> primarySplits,
    required List<Item> items,
    required List<SplitRule> splitRules,
  }) = _ItemGroup;
}
