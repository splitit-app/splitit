// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDataDTOImpl _$$UserDataDTOImplFromJson(Map<String, dynamic> json) =>
    _$UserDataDTOImpl(
      publicProfile: PublicProfileDTO.fromJson(
          json['publicProfile'] as Map<String, dynamic>),
      registeredFriendUids: (json['registeredFriendUids'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      nonRegisteredFriends: (json['nonRegisteredFriends'] as List<dynamic>)
          .map((e) => PublicProfileDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastUpdatedSession: DateTime.parse(json['lastUpdatedSession'] as String),
    );

Map<String, dynamic> _$$UserDataDTOImplToJson(_$UserDataDTOImpl instance) =>
    <String, dynamic>{
      'publicProfile': instance.publicProfile.toJson(),
      'registeredFriendUids': instance.registeredFriendUids,
      'nonRegisteredFriends':
          instance.nonRegisteredFriends.map((e) => e.toJson()).toList(),
      'lastUpdatedSession': instance.lastUpdatedSession.toIso8601String(),
    };
