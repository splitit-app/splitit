import 'package:freezed_annotation/freezed_annotation.dart';

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
}
