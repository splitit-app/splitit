import 'package:freezed_annotation/freezed_annotation.dart';

import '../../net_models/bill/item_group_dto.dart';
import '../user/public_profile.dart';
import '../user/user_data.dart';
import 'i_item_group.dart';
import 'item.dart';
import 'split_rules/split_rule.dart';

part 'item_group.freezed.dart';

@unfreezed
class ItemGroup with _$ItemGroup {
  @Implements<IItemGroup>()
  factory ItemGroup({
    required String name,
    required List<PublicProfile> primarySplits,
    required List<Item> items,
    required List<SplitRule> splitRules,
    required Map<PublicProfile, double> splitBalances,
  }) = _ItemGroup;

  factory ItemGroup.fromDataTransferObj(ItemGroupDTO itemGroupDTO, UserData userData) => ItemGroup(
        name: itemGroupDTO.name,
        primarySplits: itemGroupDTO.primarySplits
            .map((uid) =>
                uid == userData.uid ? userData.publicProfile : userData.nonRegisteredFriends[uid]!)
            .toList(),
        items: itemGroupDTO.items,
        splitRules: itemGroupDTO.splitRules,
        splitBalances: itemGroupDTO.splitBalances
            .map((uid, balance) => MapEntry(userData.nonRegisteredFriends[uid]!, balance)),
      );

  ItemGroup._();

  ItemGroupDTO get toDataTransferObj => ItemGroupDTO(
        name: name,
        primarySplits: primarySplits.map((profile) => profile.uid).toList(),
        items: items,
        splitRules: splitRules,
        splitBalances: splitBalances.map((profile, balance) => MapEntry(profile.uid, balance)),
      );

  double get value => items.fold(0, (previousValue, item) => previousValue + item.value);

  Map<PublicProfile, double> get getSplitBalances {
    final balance = value / primarySplits.length;
    return {for (var profile in primarySplits) profile: balance};
  }
}
