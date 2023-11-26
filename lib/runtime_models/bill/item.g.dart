// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ItemImpl _$$ItemImplFromJson(Map<String, dynamic> json) => _$ItemImpl(
      name: json['name'] as String? ?? 'New Item',
      value: (json['value'] as num?)?.toDouble() ?? 0,
      quantity: json['quantity'] as int? ?? 1,
      taxableStatusList: (json['taxableStatusList'] as List<dynamic>)
          .map((e) => e as bool)
          .toList(),
    );

Map<String, dynamic> _$$ItemImplToJson(_$ItemImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
      'quantity': instance.quantity,
      'taxableStatusList': instance.taxableStatusList,
    };
