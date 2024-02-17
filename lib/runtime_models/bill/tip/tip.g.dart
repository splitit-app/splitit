// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TipImpl _$$TipImplFromJson(Map<String, dynamic> json) => _$TipImpl(
      usePercentage: json['usePercentage'] as bool? ?? true,
      value: (json['value'] as num?)?.toDouble() ?? 0,
      rate: (json['rate'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$TipImplToJson(_$TipImpl instance) => <String, dynamic>{
      'usePercentage': instance.usePercentage,
      'value': instance.value,
      'rate': instance.rate,
    };
