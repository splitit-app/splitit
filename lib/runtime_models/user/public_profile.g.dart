// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PublicProfileImpl _$$PublicProfileImplFromJson(Map<String, dynamic> json) =>
    _$PublicProfileImpl(
      uid: json['uid'] as String,
      createdBy: json['createdBy'] == null
          ? null
          : PublicProfile.fromJson(json['createdBy'] as Map<String, dynamic>),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$PublicProfileImplToJson(_$PublicProfileImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'createdBy': instance.createdBy,
      'name': instance.name,
    };
