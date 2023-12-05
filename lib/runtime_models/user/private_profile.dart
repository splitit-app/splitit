import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../net_models/user/private_profile_dto.dart';

part 'private_profile.freezed.dart';

@unfreezed
class PrivateProfile with _$PrivateProfile {
  factory PrivateProfile({
    required ThemeMode themeMode,
  }) = _PrivateProfile;

  PrivateProfile._();

  factory PrivateProfile.fromDataTransferObj(PrivateProfileDTO publicProfileDTO) => PrivateProfile(
        themeMode: publicProfileDTO.themeMode == 'ThemeMode.light'
            ? ThemeMode.light
            : publicProfileDTO.themeMode == 'ThemeMode.dark'
                ? ThemeMode.dark
                : ThemeMode.system,
      );

  PrivateProfileDTO get toDataTransferObj => PrivateProfileDTO(
        themeMode: themeMode.toString(),
      );
}
