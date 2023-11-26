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
    required Map<String, double> splitBalances,
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
        splitBalances: itemGroupDTO.splitBalances,
      );

  EverythingElseItemGroup._();

  Map<String, double> get getSplitBalances {
    final balance = value / primarySplits.length;
    return {for (var profile in primarySplits) profile.uid: balance};
  }

  String get name => 'Everything Else';

  ItemGroupDTO get toDataTransferObj => ItemGroupDTO(
        name: 'Everything Else',
        primarySplits: primarySplits.map((profile) => profile.uid).toList(),
        items: items,
        splitRules: splitRules,
        splitBalances: splitBalances,
      );

  double get value => billData != null
      ? billData!.itemGroups
          .fold(billData!.totalSpent, (previousValue, itemGroup) => previousValue - itemGroup.value)
      : 0;
}
