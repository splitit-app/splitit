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
      splitRules: (json['splitRules'] as List<dynamic>)
          .map((e) => SplitRule.fromJson(e as Map<String, dynamic>))
          .toList(),
      splitBalances: (json['splitBalances'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
    );

Map<String, dynamic> _$$ItemGroupDTOImplToJson(_$ItemGroupDTOImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'primarySplits': instance.primarySplits,
      'items': instance.items.map((e) => e.toJson()).toList(),
      'splitRules': instance.splitRules.map((e) => e.toJson()).toList(),
      'splitBalances': instance.splitBalances,
    };
