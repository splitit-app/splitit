import 'package:freezed_annotation/freezed_annotation.dart';

import '../../runtime_models/bill/item.dart';
import '../../runtime_models/bill/split_rule.dart';

part 'item_group_dto.freezed.dart';
part 'item_group_dto.g.dart';

@freezed
class ItemGroupDTO with _$ItemGroupDTO {
  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  factory ItemGroupDTO({
    required String name,
    required List<String> primarySplits,
    required List<Item> items,
    required SplitRule splitRule,
    required Map<String, double> splitBalances,
    //
    required Map<String, double> splitPercentages,
    required Map<String, double> splitShares,
    required Map<String, double> splitExacts,
  }) = _ItemGroupDTO;

  factory ItemGroupDTO.fromJson(Map<String, dynamic> json) => _$ItemGroupDTOFromJson(json);
}
