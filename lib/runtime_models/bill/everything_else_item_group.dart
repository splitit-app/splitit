import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_bs/net_models/bill/everything_else_item_group_dto.dart';
import 'package:project_bs/runtime_models/bill/bill_data.dart';

import '../user/public_profile.dart';
import 'item.dart';
import 'split_rules/split_rule.dart';

part 'everything_else_item_group.freezed.dart';

@freezed
class EverythingElseItemGroup with _$EverythingElseItemGroup {
  factory EverythingElseItemGroup({
    required List<PublicProfile> primarySplits,
    required List<Item> items,
    required List<SplitRule> splitRules,
    required Map<PublicProfile, double> splitBalances,
  }) = _EverythingElseItemGroup;

  EverythingElseItemGroup._();

  String get name => 'Everything Else';

  EverythingElseItemGroupDTO get toDataTransferObj => EverythingElseItemGroupDTO(
        primarySplits: primarySplits.map((profile) => profile.uid).toList(),
        items: items,
        splitRules: splitRules,
        splitBalances: splitBalances.map((profile, balance) => MapEntry(profile.uid, balance)),
      );

  Map<PublicProfile, double> getSplitBalances(BillData billData) {
    final balance = value(billData) / primarySplits.length;
    return {for (var profile in primarySplits) profile: balance};
  }

  double value(BillData billData) => billData.itemGroups
      .fold(billData.totalSpent, (previousValue, itemGroup) => previousValue - itemGroup.value);
}
