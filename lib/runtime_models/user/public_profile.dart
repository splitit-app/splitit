import 'package:freezed_annotation/freezed_annotation.dart';

part 'public_profile.freezed.dart';
part 'public_profile.g.dart';

@unfreezed
class PublicProfile with _$PublicProfile {
  factory PublicProfile({
    String? userId,
    String? profileId,
    required String name,
    //Image? profileImage,
  }) = _PublicProfile;

  factory PublicProfile.fromJson(Map<String, dynamic> json) => _$PublicProfileFromJson(json);

  PublicProfile._();

  bool get hasUserId => userId != null && userId!.isNotEmpty;

  void syncToActiveAccount(PublicProfile activeProfile) {
      if(hasUserId) return;

      //userId = activeProfile.userId;
      //name = activeProfile.name;
      //...

      //TODO: iterate through all bills and replace every instance of itself with the active profile
  }
}
