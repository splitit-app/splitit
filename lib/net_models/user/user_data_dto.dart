import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../runtime_models/user/private_profile.dart';
import '../../runtime_models/user/public_profile.dart';
import '../../runtime_models/user/user_data.dart';
import 'public_profile_dto.dart';

part 'user_data_dto.freezed.dart';
part 'user_data_dto.g.dart';

@freezed
class UserDataDTO with _$UserDataDTO {
  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  factory UserDataDTO({
    required PublicProfileDTO publicProfile,
    required List<String> registeredFriendUids,
    required List<PublicProfileDTO> nonRegisteredFriends,
    required DateTime lastUpdatedSession,
  }) = _UserDataDTO;

  factory UserDataDTO.fromJson(Map<String, dynamic> json) => _$UserDataDTOFromJson(json);

  UserDataDTO._();

  UserData toRuntimeObj(String uid) {
    final $publicProfile = publicProfile.toRuntimeObj(uid);

    return UserData(
      uid: uid,
      publicProfile: $publicProfile,
      privateProfile: PrivateProfile(themeData: ThemeData.light()),
      registeredFriends: List.empty(),
      nonRegisteredFriends: nonRegisteredFriends
          .map((friend) => friend.toRuntimeObj(friend.uid, createdBy: $publicProfile))
          .toList(),
    );
  }
}
