// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'public_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PublicProfile {
  String? get userId => throw _privateConstructorUsedError;
  set userId(String? value) => throw _privateConstructorUsedError;
  String? get profileId => throw _privateConstructorUsedError;
  set profileId(String? value) => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  Image? get profileImage => throw _privateConstructorUsedError;
  set profileImage(Image? value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PublicProfileCopyWith<PublicProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PublicProfileCopyWith<$Res> {
  factory $PublicProfileCopyWith(
          PublicProfile value, $Res Function(PublicProfile) then) =
      _$PublicProfileCopyWithImpl<$Res, PublicProfile>;
  @useResult
  $Res call(
      {String? userId, String? profileId, String name, Image? profileImage});
}

/// @nodoc
class _$PublicProfileCopyWithImpl<$Res, $Val extends PublicProfile>
    implements $PublicProfileCopyWith<$Res> {
  _$PublicProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? profileId = freezed,
    Object? name = null,
    Object? profileImage = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      profileId: freezed == profileId
          ? _value.profileId
          : profileId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as Image?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PublicProfileCopyWith<$Res>
    implements $PublicProfileCopyWith<$Res> {
  factory _$$_PublicProfileCopyWith(
          _$_PublicProfile value, $Res Function(_$_PublicProfile) then) =
      __$$_PublicProfileCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? userId, String? profileId, String name, Image? profileImage});
}

/// @nodoc
class __$$_PublicProfileCopyWithImpl<$Res>
    extends _$PublicProfileCopyWithImpl<$Res, _$_PublicProfile>
    implements _$$_PublicProfileCopyWith<$Res> {
  __$$_PublicProfileCopyWithImpl(
      _$_PublicProfile _value, $Res Function(_$_PublicProfile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? profileId = freezed,
    Object? name = null,
    Object? profileImage = freezed,
  }) {
    return _then(_$_PublicProfile(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      profileId: freezed == profileId
          ? _value.profileId
          : profileId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as Image?,
    ));
  }
}

/// @nodoc

class _$_PublicProfile extends _PublicProfile {
  _$_PublicProfile(
      {this.userId, this.profileId, required this.name, this.profileImage})
      : super._();

  @override
  String? userId;
  @override
  String? profileId;
  @override
  String name;
  @override
  Image? profileImage;

  @override
  String toString() {
    return 'PublicProfile(userId: $userId, profileId: $profileId, name: $name, profileImage: $profileImage)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PublicProfileCopyWith<_$_PublicProfile> get copyWith =>
      __$$_PublicProfileCopyWithImpl<_$_PublicProfile>(this, _$identity);
}

abstract class _PublicProfile extends PublicProfile {
  factory _PublicProfile(
      {String? userId,
      String? profileId,
      required String name,
      Image? profileImage}) = _$_PublicProfile;
  _PublicProfile._() : super._();

  @override
  String? get userId;
  set userId(String? value);
  @override
  String? get profileId;
  set profileId(String? value);
  @override
  String get name;
  set name(String value);
  @override
  Image? get profileImage;
  set profileImage(Image? value);
  @override
  @JsonKey(ignore: true)
  _$$_PublicProfileCopyWith<_$_PublicProfile> get copyWith =>
      throw _privateConstructorUsedError;
}
