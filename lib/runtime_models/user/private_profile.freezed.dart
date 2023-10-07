// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'private_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PrivateProfile {
  Theme get theme => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PrivateProfileCopyWith<PrivateProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrivateProfileCopyWith<$Res> {
  factory $PrivateProfileCopyWith(
          PrivateProfile value, $Res Function(PrivateProfile) then) =
      _$PrivateProfileCopyWithImpl<$Res, PrivateProfile>;
  @useResult
  $Res call({Theme theme});
}

/// @nodoc
class _$PrivateProfileCopyWithImpl<$Res, $Val extends PrivateProfile>
    implements $PrivateProfileCopyWith<$Res> {
  _$PrivateProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = null,
  }) {
    return _then(_value.copyWith(
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as Theme,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PrivateProfileCopyWith<$Res>
    implements $PrivateProfileCopyWith<$Res> {
  factory _$$_PrivateProfileCopyWith(
          _$_PrivateProfile value, $Res Function(_$_PrivateProfile) then) =
      __$$_PrivateProfileCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Theme theme});
}

/// @nodoc
class __$$_PrivateProfileCopyWithImpl<$Res>
    extends _$PrivateProfileCopyWithImpl<$Res, _$_PrivateProfile>
    implements _$$_PrivateProfileCopyWith<$Res> {
  __$$_PrivateProfileCopyWithImpl(
      _$_PrivateProfile _value, $Res Function(_$_PrivateProfile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = null,
  }) {
    return _then(_$_PrivateProfile(
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as Theme,
    ));
  }
}

/// @nodoc

class _$_PrivateProfile implements _PrivateProfile {
  _$_PrivateProfile({required this.theme});

  @override
  final Theme theme;

  @override
  String toString() {
    return 'PrivateProfile(theme: $theme)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PrivateProfile &&
            (identical(other.theme, theme) || other.theme == theme));
  }

  @override
  int get hashCode => Object.hash(runtimeType, theme);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PrivateProfileCopyWith<_$_PrivateProfile> get copyWith =>
      __$$_PrivateProfileCopyWithImpl<_$_PrivateProfile>(this, _$identity);
}

abstract class _PrivateProfile implements PrivateProfile {
  factory _PrivateProfile({required final Theme theme}) = _$_PrivateProfile;

  @override
  Theme get theme;
  @override
  @JsonKey(ignore: true)
  _$$_PrivateProfileCopyWith<_$_PrivateProfile> get copyWith =>
      throw _privateConstructorUsedError;
}
