import 'package:freezed_annotation/freezed_annotation.dart';

import 'private_profile_dto.dart';
import 'public_profile_dto.dart';

part 'user_data_dto.freezed.dart';
part 'user_data_dto.g.dart';

@freezed
class UserDataDTO with _$UserDataDTO {
  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  factory UserDataDTO({
    required PublicProfileDTO publicProfile,
    required PrivateProfileDTO privateProfile,
    required List<String> registeredFriendUids,
    required List<PublicProfileDTO> nonRegisteredFriends,
    required DateTime lastUpdatedSession,
  }) = _UserDataDTO;

  factory UserDataDTO.fromJson(Map<String, dynamic> json) => _$UserDataDTOFromJson(json);
}
