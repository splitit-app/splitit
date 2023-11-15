// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'everything_else_item_group_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EverythingElseItemGroupDTOImpl _$$EverythingElseItemGroupDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$EverythingElseItemGroupDTOImpl(
      primarySplits: (json['primarySplits'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      items: (json['items'] as List<dynamic>)
          .map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      splitRules: (json['splitRules'] as List<dynamic>)
          .map((e) => SplitRule.fromJson(e as Map<String, dynamic>))
          .toList(),
      splitBalances: (json['splitBalances'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
    );

Map<String, dynamic> _$$EverythingElseItemGroupDTOImplToJson(
        _$EverythingElseItemGroupDTOImpl instance) =>
    <String, dynamic>{
      'primarySplits': instance.primarySplits,
      'items': instance.items,
      'splitRules': instance.splitRules,
      'splitBalances': instance.splitBalances,
    };
