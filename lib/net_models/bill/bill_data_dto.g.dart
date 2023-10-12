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
      payerUid: json['payerUid'] as String,
      lastUpdatedSession: DateTime.parse(json['lastUpdatedSession'] as String),
    );

Map<String, dynamic> _$$_BillDataDTOToJson(_$_BillDataDTO instance) =>
    <String, dynamic>{
      'dateTime': instance.dateTime.toIso8601String(),
      'name': instance.name,
      'totalSpent': instance.totalSpent,
      'payerUid': instance.payerUid,
      'lastUpdatedSession': instance.lastUpdatedSession.toIso8601String(),
    };
