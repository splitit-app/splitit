import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'private_profile.freezed.dart';

@freezed
class PrivateProfile with _$PrivateProfile {
  factory PrivateProfile({
    required Theme theme,
  }) = _PrivateProfile;
}
