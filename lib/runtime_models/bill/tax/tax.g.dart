// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tax.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaxImpl _$$TaxImplFromJson(Map<String, dynamic> json) => _$TaxImpl(
      name: json['name'] as String? ?? 'New Item',
      value: (json['value'] as num?)?.toDouble() ?? 0,
      includedInTotal: json['includedInTotal'] as bool? ?? true,
    );

Map<String, dynamic> _$$TaxImplToJson(_$TaxImpl instance) => <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
      'includedInTotal': instance.includedInTotal,
    };
