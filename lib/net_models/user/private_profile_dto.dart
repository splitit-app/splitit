import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'private_profile_dto.freezed.dart';
part 'private_profile_dto.g.dart';

@freezed
class PrivateProfileDTO with _$PrivateProfileDTO {
  factory PrivateProfileDTO({
    required String themeMode,
  }) = _PrivateProfileDTO;

  factory PrivateProfileDTO.fromJson(Map<String, dynamic> json) =>
      _$PrivateProfileDTOFromJson(json);
}
