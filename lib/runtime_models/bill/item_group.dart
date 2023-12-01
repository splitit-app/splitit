import 'package:freezed_annotation/freezed_annotation.dart';

import '../../net_models/bill/item_group_dto.dart';
import '../user/public_profile.dart';
import '../user/user_data.dart';
import 'i_item_group.dart';
import 'item.dart';
import 'split_rule.dart';

part 'item_group.freezed.dart';

@unfreezed
class ItemGroup with _$ItemGroup {
  @Implements<IItemGroup>()
  factory ItemGroup({
    required String name,
    required List<PublicProfile> primarySplits,
    required List<Item> items,
    required SplitRule splitRule,
    required Map<String, double> splitBalances,
    //
    required Map<String, double> splitPercentages,
    required Map<String, double> splitShares,
    required Map<String, double> splitExacts,
  }) = _ItemGroup;

  factory ItemGroup.fromDataTransferObj(ItemGroupDTO itemGroupDTO, UserData userData) => ItemGroup(
        name: itemGroupDTO.name,
        primarySplits: itemGroupDTO.primarySplits
            .map((uid) =>
                uid == userData.uid ? userData.publicProfile : userData.nonRegisteredFriends[uid]!)
            .toList(),
        items: itemGroupDTO.items,
        splitRule: itemGroupDTO.splitRule,
        splitBalances: itemGroupDTO.splitBalances,
        //
        splitPercentages: itemGroupDTO.splitPercentages,
        splitShares: itemGroupDTO.splitShares,
        splitExacts: itemGroupDTO.splitExacts,
      );

  ItemGroup._();

  ItemGroupDTO get toDataTransferObj => ItemGroupDTO(
        name: name,
        primarySplits: primarySplits.map((profile) => profile.uid).toList(),
        items: items,
        splitRule: splitRule,
        splitBalances: splitBalances,
        //
        splitPercentages: splitPercentages,
        splitShares: splitShares,
        splitExacts: splitExacts,
      );

  double get value =>
      items.fold(0, (previousValue, item) => previousValue + item.value * item.quantity);

  Map<String, double> get getSplitBalances {
    final evenBalance = value / primarySplits.length;
    final double totalShares =
        primarySplits.fold(0, (previousValue, profile) => previousValue + splitShares[profile.uid]!);

    return {
      for (var profile in primarySplits)
        profile.uid: switch (splitRule) {
          SplitRule.even => evenBalance,
          SplitRule.byPercentage => value * splitPercentages[profile.uid]!,
          SplitRule.byShares => value * splitShares[profile.uid]! / totalShares,
          SplitRule.exact => splitExacts[profile.uid]!,
        }
    };
  }
}
