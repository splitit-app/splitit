import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_bs/runtime_models/user/private_profile.dart';
import 'package:project_bs/runtime_models/user/public_profile.dart';

part 'user_data.freezed.dart';

@freezed
class UserData with _$UserData {
  const factory UserData({
    required String name,
    required PublicProfile publicProfile,
    required PrivateProfile privateProfile,
  }) = _UserData;
}
