import 'package:freezed_annotation/freezed_annotation.dart';

import '../../runtime_models/user/public_profile.dart';

part 'public_profile_dto.freezed.dart';
part 'public_profile_dto.g.dart';

@freezed
class PublicProfileDTO with _$PublicProfileDTO {
  factory PublicProfileDTO({
    required String uid,
    String? createdBy,
    required String name,
  }) = _PublicProfileDTO;

  factory PublicProfileDTO.fromJson(Map<String, dynamic> json) => _$PublicProfileDTOFromJson(json);

  PublicProfileDTO._();

  PublicProfile toRuntimeObj(String uid, {PublicProfile? createdBy}) => PublicProfile(
        uid: uid,
        createdBy: createdBy,
        name: name,
      );
}
