// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_group_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ItemGroupDTOImpl _$$ItemGroupDTOImplFromJson(Map<String, dynamic> json) =>
    _$ItemGroupDTOImpl(
      name: json['name'] as String,
      primarySplits: (json['primarySplits'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      items: (json['items'] as List<dynamic>)
          .map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      splitRule: $enumDecode(_$SplitRuleEnumMap, json['splitRule']),
      splitBalances: (json['splitBalances'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      splitPercentages: (json['splitPercentages'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      splitShares: (json['splitShares'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      splitExacts: (json['splitExacts'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
    );

Map<String, dynamic> _$$ItemGroupDTOImplToJson(_$ItemGroupDTOImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'primarySplits': instance.primarySplits,
      'items': instance.items.map((e) => e.toJson()).toList(),
      'splitRule': _$SplitRuleEnumMap[instance.splitRule]!,
      'splitBalances': instance.splitBalances,
      'splitPercentages': instance.splitPercentages,
      'splitShares': instance.splitShares,
      'splitExacts': instance.splitExacts,
    };

const _$SplitRuleEnumMap = {
  SplitRule.even: 'even',
  SplitRule.byPercentage: 'byPercentage',
  SplitRule.byShares: 'byShares',
  SplitRule.exact: 'exact',
};
