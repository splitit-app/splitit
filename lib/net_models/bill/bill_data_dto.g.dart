// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bill_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BillDataDTO _$$_BillDataDTOFromJson(Map<String, dynamic> json) =>
    _$_BillDataDTO(
      dateTime: DateTime.parse(json['dateTime'] as String),
      name: json['name'] as String,
      totalSpent: (json['totalSpent'] as num).toDouble(),
    );

Map<String, dynamic> _$$_BillDataDTOToJson(_$_BillDataDTO instance) =>
    <String, dynamic>{
      'dateTime': instance.dateTime.toIso8601String(),
      'name': instance.name,
      'totalSpent': instance.totalSpent,
    };
