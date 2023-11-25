import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../net_models/user/user_data_dto.dart';
import 'private_profile.dart';
import 'public_profile.dart';

part 'user_data.freezed.dart';

@unfreezed
class UserData with _$UserData {
  static const int nonRegisteredFriendLimit = 50;

  factory UserData({
    required String uid,
    required PublicProfile publicProfile,
    required PrivateProfile privateProfile,
    required List<PublicProfile> registeredFriends,
    required Map<String, PublicProfile> nonRegisteredFriends,
  }) = _UserData;

  factory UserData.fromDataTransferObj(UserDataDTO userDataDTO, String uid) {
    final publicProfile = PublicProfile.fromDataTransferObj(userDataDTO.publicProfile, uid);

    return UserData(
      uid: uid,
      publicProfile: publicProfile,
      privateProfile: PrivateProfile(themeData: ThemeData.light()),
      registeredFriends: List.empty(),
      nonRegisteredFriends: {
        for (var profile in userDataDTO.nonRegisteredFriends)
          profile.uid:
              PublicProfile.fromDataTransferObj(profile, profile.uid, createdBy: publicProfile)
      },
    );
  }

  UserData._();

  UserDataDTO get toDataTransferObj => UserDataDTO(
        publicProfile: publicProfile.toDataTransferObj,
        registeredFriendUids: registeredFriends
            .where((friend) => friend.isRegistered)
            .map((friend) => friend.uid)
            .toList(),
        nonRegisteredFriends:
            nonRegisteredFriends.values.map((profile) => profile.toDataTransferObj).toList(),
        lastUpdatedSession: DateTime.now(),
      );
}
