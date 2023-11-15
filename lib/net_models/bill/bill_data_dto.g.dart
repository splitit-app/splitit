// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bill_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BillDataDTOImpl _$$BillDataDTOImplFromJson(Map<String, dynamic> json) =>
    _$BillDataDTOImpl(
      dateTime: DateTime.parse(json['dateTime'] as String),
      name: json['name'] as String,
      totalSpent: (json['totalSpent'] as num).toDouble(),
      payerUid: json['payerUid'] as String,
      primarySplits: (json['primarySplits'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      splitBalances: (json['splitBalances'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      paymentResolveStatuses:
          (json['paymentResolveStatuses'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      everythingElse: EverythingElseItemGroupDTO.fromJson(
          json['everythingElse'] as Map<String, dynamic>),
      lastUpdatedSession: DateTime.parse(json['lastUpdatedSession'] as String),
    );

Map<String, dynamic> _$$BillDataDTOImplToJson(_$BillDataDTOImpl instance) =>
    <String, dynamic>{
      'dateTime': instance.dateTime.toIso8601String(),
      'name': instance.name,
      'totalSpent': instance.totalSpent,
      'payerUid': instance.payerUid,
      'primarySplits': instance.primarySplits,
      'splitBalances': instance.splitBalances,
      'paymentResolveStatuses': instance.paymentResolveStatuses,
      'everythingElse': instance.everythingElse.toJson(),
      'lastUpdatedSession': instance.lastUpdatedSession.toIso8601String(),
    };
