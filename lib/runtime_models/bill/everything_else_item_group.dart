import 'package:freezed_annotation/freezed_annotation.dart';

import '../../net_models/bill/everything_else_item_group_dto.dart';
import '../user/public_profile.dart';
import 'bill_data.dart';
import 'item.dart';
import 'i_item_group.dart';
import 'split_rules/split_rule.dart';

part 'everything_else_item_group.freezed.dart';

@unfreezed
class EverythingElseItemGroup with _$EverythingElseItemGroup {
  @Implements<IItemGroup>()
  factory EverythingElseItemGroup({
    required List<PublicProfile> primarySplits,
    required List<Item> items,
    required List<SplitRule> splitRules,
    required Map<PublicProfile, double> splitBalances,
    BillData? billData,
  }) = _EverythingElseItemGroup;

  EverythingElseItemGroup._();

  String get name => 'Everything Else';

  EverythingElseItemGroupDTO get toDataTransferObj => EverythingElseItemGroupDTO(
        primarySplits: primarySplits.map((profile) => profile.uid).toList(),
        items: items,
        splitRules: splitRules,
        splitBalances: splitBalances.map((profile, balance) => MapEntry(profile.uid, balance)),
      );

  Map<PublicProfile, double> get getSplitBalances {
    final balance = value / primarySplits.length;
    return {for (var profile in primarySplits) profile: balance};
  }

  double get value => billData != null
      ? billData!.itemGroups
          .fold(billData!.totalSpent, (previousValue, itemGroup) => previousValue - itemGroup.value)
      : 0;
}
