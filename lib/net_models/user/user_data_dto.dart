import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_bs/net_models/user/public_profile_dto.dart';
import 'package:project_bs/runtime_models/user/private_profile.dart';
import 'package:project_bs/runtime_models/user/public_profile.dart';
import 'package:project_bs/runtime_models/user/user_data.dart';

part 'user_data_dto.freezed.dart';
part 'user_data_dto.g.dart';

@freezed
class UserDataDTO with _$UserDataDTO {
  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  factory UserDataDTO({
    required PublicProfileDTO publicProfile,
    required List<String> friendUids,
    required DateTime lastUpdatedSession,
  }) = _UserDataDTO;

  factory UserDataDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDataDTOFromJson(json);

  UserDataDTO._();

  UserData toRuntimeObj(String uid) => UserData(
        uid: uid,
        publicProfile: publicProfile.toRuntimeObj,
        privateProfile: PrivateProfile(themeData: ThemeData.light()),
        friends: List.empty(),
      );
}
