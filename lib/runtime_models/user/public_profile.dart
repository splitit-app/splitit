import 'package:freezed_annotation/freezed_annotation.dart';

import '../../net_models/user/public_profile_dto.dart';

part 'public_profile.freezed.dart';
part 'public_profile.g.dart';

@unfreezed
class PublicProfile with _$PublicProfile {
  factory PublicProfile({
    required String uid,
    PublicProfile? createdBy,
    required String name,
    //Image? profileImage,
  }) = _PublicProfile;

  factory PublicProfile.fromJson(Map<String, dynamic> json) => _$PublicProfileFromJson(json);

  PublicProfile._();

  bool get isRegistered => createdBy == null;

  PublicProfileDTO get toDataTransferObj => PublicProfileDTO(
        uid: uid,
        createdBy: createdBy?.uid,
        name: name,
      );

  void syncToActiveAccount(PublicProfile activeProfile) {
    if (isRegistered) return;

    //userId = activeProfile.userId;
    //name = activeProfile.name;
    //...

    //TODO: iterate through all bills and replace every instance of itself with the active profile
  }
}
