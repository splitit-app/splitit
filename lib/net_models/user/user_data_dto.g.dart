// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDataDTO _$$_UserDataDTOFromJson(Map<String, dynamic> json) =>
    _$_UserDataDTO(
      friendUids: (json['friendUids'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      lastUpdatedSession: DateTime.parse(json['lastUpdatedSession'] as String),
    );

Map<String, dynamic> _$$_UserDataDTOToJson(_$_UserDataDTO instance) =>
    <String, dynamic>{
      'friendUids': instance.friendUids,
      'lastUpdatedSession': instance.lastUpdatedSession.toIso8601String(),
    };
