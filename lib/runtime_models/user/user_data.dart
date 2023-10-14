import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../net_models/user/user_data_dto.dart';
import 'private_profile.dart';
import 'public_profile.dart';

part 'user_data.freezed.dart';

@unfreezed
class UserData with _$UserData {
  factory UserData({
    required String uid,
    //required String name,
    required PublicProfile publicProfile,
    required PrivateProfile privateProfile,
    required List<PublicProfile> registeredFriends,
    required List<PublicProfile> nonRegisteredFriends,
  }) = _UserData;

  static const int nonRegisteredFriendLimit = 30;

  UserData._();

  UserDataDTO get toDataTransferObj => UserDataDTO(
      publicProfile: publicProfile.toDataTransferObj,
      registeredFriendUids: registeredFriends
          .where((friend) => friend.hasUserId)
          .map((friend) => friend.userId!)
          .toList(),
      nonRegisteredFriends: nonRegisteredFriends
          .map((friend) => friend.toDataTransferObj)
          .toList(),
      lastUpdatedSession: DateTime.now());
}
