// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bill_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BillData _$$_BillDataFromJson(Map<String, dynamic> json) => _$_BillData(
      dateTime: DateTime.parse(json['dateTime'] as String),
      name: json['name'] as String,
      totalSpent: (json['totalSpent'] as num).toDouble(),
      payer: Friend.fromJson(json['payer'] as Map<String, dynamic>),
      primarySplits: (json['primarySplits'] as List<dynamic>)
          .map((e) => Friend.fromJson(e as Map<String, dynamic>))
          .toList(),
      secondarySplits: (json['secondarySplits'] as List<dynamic>)
          .map((e) => Friend.fromJson(e as Map<String, dynamic>))
          .toList(),
      splitRules:
          (json['splitRules'] as List<dynamic>).map((e) => e as bool).toList(),
      paymentResolveStatuses: (json['paymentResolveStatuses'] as List<dynamic>)
          .map((e) => _$recordConvert(
                e,
                ($jsonValue) => (
                  Friend.fromJson($jsonValue[r'$1'] as Map<String, dynamic>),
                  $jsonValue[r'$2'] as bool,
                ),
              ))
          .toList(),
    );

Map<String, dynamic> _$$_BillDataToJson(_$_BillData instance) =>
    <String, dynamic>{
      'dateTime': instance.dateTime.toIso8601String(),
      'name': instance.name,
      'totalSpent': instance.totalSpent,
      'payer': instance.payer,
      'primarySplits': instance.primarySplits,
      'secondarySplits': instance.secondarySplits,
      'splitRules': instance.splitRules,
      'paymentResolveStatuses': instance.paymentResolveStatuses
          .map((e) => {
                r'$1': e.$1,
                r'$2': e.$2,
              })
          .toList(),
    };

$Rec _$recordConvert<$Rec>(
  Object? value,
  $Rec Function(Map) convert,
) =>
    convert(value as Map<String, dynamic>);
