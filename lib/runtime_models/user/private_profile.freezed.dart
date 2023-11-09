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
  ThemeData get themeData => throw _privateConstructorUsedError;

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
  $Res call({ThemeData themeData});
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
    Object? themeData = null,
  }) {
    return _then(_value.copyWith(
      themeData: null == themeData
          ? _value.themeData
          : themeData // ignore: cast_nullable_to_non_nullable
              as ThemeData,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrivateProfileImplCopyWith<$Res>
    implements $PrivateProfileCopyWith<$Res> {
  factory _$$PrivateProfileImplCopyWith(_$PrivateProfileImpl value,
          $Res Function(_$PrivateProfileImpl) then) =
      __$$PrivateProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ThemeData themeData});
}

/// @nodoc
class __$$PrivateProfileImplCopyWithImpl<$Res>
    extends _$PrivateProfileCopyWithImpl<$Res, _$PrivateProfileImpl>
    implements _$$PrivateProfileImplCopyWith<$Res> {
  __$$PrivateProfileImplCopyWithImpl(
      _$PrivateProfileImpl _value, $Res Function(_$PrivateProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeData = null,
  }) {
    return _then(_$PrivateProfileImpl(
      themeData: null == themeData
          ? _value.themeData
          : themeData // ignore: cast_nullable_to_non_nullable
              as ThemeData,
    ));
  }
}

/// @nodoc

class _$PrivateProfileImpl implements _PrivateProfile {
  _$PrivateProfileImpl({required this.themeData});

  @override
  final ThemeData themeData;

  @override
  String toString() {
    return 'PrivateProfile(themeData: $themeData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrivateProfileImpl &&
            (identical(other.themeData, themeData) ||
                other.themeData == themeData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PrivateProfileImplCopyWith<_$PrivateProfileImpl> get copyWith =>
      __$$PrivateProfileImplCopyWithImpl<_$PrivateProfileImpl>(
          this, _$identity);
}

abstract class _PrivateProfile implements PrivateProfile {
  factory _PrivateProfile({required final ThemeData themeData}) =
      _$PrivateProfileImpl;

  @override
  ThemeData get themeData;
  @override
  @JsonKey(ignore: true)
  _$$PrivateProfileImplCopyWith<_$PrivateProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
