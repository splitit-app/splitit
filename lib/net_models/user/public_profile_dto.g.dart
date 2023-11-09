// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_profile_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PublicProfileDTOImpl _$$PublicProfileDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$PublicProfileDTOImpl(
      uid: json['uid'] as String,
      createdBy: json['createdBy'] as String?,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$PublicProfileDTOImplToJson(
        _$PublicProfileDTOImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'createdBy': instance.createdBy,
      'name': instance.name,
    };
