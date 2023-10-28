// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PublicProfile _$$_PublicProfileFromJson(Map<String, dynamic> json) =>
    _$_PublicProfile(
      uid: json['uid'] as String,
      createdBy: json['createdBy'] == null
          ? null
          : PublicProfile.fromJson(json['createdBy'] as Map<String, dynamic>),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_PublicProfileToJson(_$_PublicProfile instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'createdBy': instance.createdBy,
      'name': instance.name,
    };
