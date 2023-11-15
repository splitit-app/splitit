import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_bs/runtime_models/bill/everything_else_item_group.dart';
import 'package:project_bs/runtime_models/user/user_data.dart';

import '../../runtime_models/bill/item.dart';
import '../../runtime_models/bill/split_rules/split_rule.dart';

part 'everything_else_item_group_dto.freezed.dart';
part 'everything_else_item_group_dto.g.dart';

@freezed
class EverythingElseItemGroupDTO with _$EverythingElseItemGroupDTO {
  factory EverythingElseItemGroupDTO({
    required List<String> primarySplits,
    required List<Item> items,
    required List<SplitRule> splitRules,
    required Map<String, double> splitBalances,
  }) = _EverythingElseItemGroupDTO;

  factory EverythingElseItemGroupDTO.fromJson(Map<String, dynamic> json) =>
      _$EverythingElseItemGroupDTOFromJson(json);

  EverythingElseItemGroupDTO._();

  EverythingElseItemGroup toRuntimeObj(UserData userData) => EverythingElseItemGroup(
        primarySplits: primarySplits
            .map((uid) =>
                uid == userData.uid ? userData.publicProfile : userData.nonRegisteredFriends[uid]!)
            .toList(),
        items: items,
        splitRules: splitRules,
        splitBalances: splitBalances
            .map((uid, balance) => MapEntry(userData.nonRegisteredFriends[uid]!, balance)),
      );
}
