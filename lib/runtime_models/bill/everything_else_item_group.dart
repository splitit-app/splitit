import 'package:freezed_annotation/freezed_annotation.dart';

import '../../net_models/bill/item_group_dto.dart';
import '../user/public_profile.dart';
import '../user/user_data.dart';
import 'bill_data.dart';
import 'i_item_group.dart';
import 'item.dart';
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

  factory EverythingElseItemGroup.fromDataTransferObj(
          ItemGroupDTO itemGroupDTO, UserData userData) =>
      EverythingElseItemGroup(
        primarySplits: itemGroupDTO.primarySplits
            .map((uid) =>
                uid == userData.uid ? userData.publicProfile : userData.nonRegisteredFriends[uid]!)
            .toList(),
        items: itemGroupDTO.items,
        splitRules: itemGroupDTO.splitRules,
        splitBalances: itemGroupDTO.splitBalances
            .map((uid, balance) => MapEntry(userData.nonRegisteredFriends[uid]!, balance)),
      );

  EverythingElseItemGroup._();

  Map<PublicProfile, double> get getSplitBalances {
    final balance = value / primarySplits.length;
    return {for (var profile in primarySplits) profile: balance};
  }

  String get name => 'Everything Else';

  ItemGroupDTO get toDataTransferObj => ItemGroupDTO(
        name: 'Everything Else',
        primarySplits: primarySplits.map((profile) => profile.uid).toList(),
        items: items,
        splitRules: splitRules,
        splitBalances: splitBalances.map((profile, balance) => MapEntry(profile.uid, balance)),
      );

  double get value => billData != null
      ? billData!.itemGroups
          .fold(billData!.totalSpent, (previousValue, itemGroup) => previousValue - itemGroup.value)
      : 0;
}
