import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_bs/net_models/user/user_data_dto.dart';
import 'package:project_bs/runtime_models/user/private_profile.dart';
import 'package:project_bs/runtime_models/user/public_profile.dart';

part 'user_data.freezed.dart';

@unfreezed
class UserData with _$UserData {
  factory UserData({
    required String uid,
    //required String name,
    required PublicProfile publicProfile,
    required PrivateProfile privateProfile,
    required List<PublicProfile> friends,
  }) = _UserData;

  UserData._();

  UserDataDTO get toDataTransferObj => UserDataDTO(
      friendUids: friends
          .where((friend) => friend.hasUserId)
          .map((friend) => friend.userId!)
          .toList(),
      lastUpdatedSession: DateTime.now());
}
