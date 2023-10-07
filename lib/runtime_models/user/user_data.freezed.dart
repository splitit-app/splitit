// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserData {
  String get name => throw _privateConstructorUsedError;
  PublicProfile get publicProfile => throw _privateConstructorUsedError;
  PrivateProfile get privateProfile => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserDataCopyWith<UserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) then) =
      _$UserDataCopyWithImpl<$Res, UserData>;
  @useResult
  $Res call(
      {String name,
      PublicProfile publicProfile,
      PrivateProfile privateProfile});

  $PublicProfileCopyWith<$Res> get publicProfile;
  $PrivateProfileCopyWith<$Res> get privateProfile;
}

/// @nodoc
class _$UserDataCopyWithImpl<$Res, $Val extends UserData>
    implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? publicProfile = null,
    Object? privateProfile = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      publicProfile: null == publicProfile
          ? _value.publicProfile
          : publicProfile // ignore: cast_nullable_to_non_nullable
              as PublicProfile,
      privateProfile: null == privateProfile
          ? _value.privateProfile
          : privateProfile // ignore: cast_nullable_to_non_nullable
              as PrivateProfile,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PublicProfileCopyWith<$Res> get publicProfile {
    return $PublicProfileCopyWith<$Res>(_value.publicProfile, (value) {
      return _then(_value.copyWith(publicProfile: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PrivateProfileCopyWith<$Res> get privateProfile {
    return $PrivateProfileCopyWith<$Res>(_value.privateProfile, (value) {
      return _then(_value.copyWith(privateProfile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserDataCopyWith<$Res> implements $UserDataCopyWith<$Res> {
  factory _$$_UserDataCopyWith(
          _$_UserData value, $Res Function(_$_UserData) then) =
      __$$_UserDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      PublicProfile publicProfile,
      PrivateProfile privateProfile});

  @override
  $PublicProfileCopyWith<$Res> get publicProfile;
  @override
  $PrivateProfileCopyWith<$Res> get privateProfile;
}

/// @nodoc
class __$$_UserDataCopyWithImpl<$Res>
    extends _$UserDataCopyWithImpl<$Res, _$_UserData>
    implements _$$_UserDataCopyWith<$Res> {
  __$$_UserDataCopyWithImpl(
      _$_UserData _value, $Res Function(_$_UserData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? publicProfile = null,
    Object? privateProfile = null,
  }) {
    return _then(_$_UserData(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      publicProfile: null == publicProfile
          ? _value.publicProfile
          : publicProfile // ignore: cast_nullable_to_non_nullable
              as PublicProfile,
      privateProfile: null == privateProfile
          ? _value.privateProfile
          : privateProfile // ignore: cast_nullable_to_non_nullable
              as PrivateProfile,
    ));
  }
}

/// @nodoc

class _$_UserData with DiagnosticableTreeMixin implements _UserData {
  const _$_UserData(
      {required this.name,
      required this.publicProfile,
      required this.privateProfile});

  @override
  final String name;
  @override
  final PublicProfile publicProfile;
  @override
  final PrivateProfile privateProfile;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserData(name: $name, publicProfile: $publicProfile, privateProfile: $privateProfile)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserData'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('publicProfile', publicProfile))
      ..add(DiagnosticsProperty('privateProfile', privateProfile));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserData &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.publicProfile, publicProfile) ||
                other.publicProfile == publicProfile) &&
            (identical(other.privateProfile, privateProfile) ||
                other.privateProfile == privateProfile));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, publicProfile, privateProfile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserDataCopyWith<_$_UserData> get copyWith =>
      __$$_UserDataCopyWithImpl<_$_UserData>(this, _$identity);
}

abstract class _UserData implements UserData {
  const factory _UserData(
      {required final String name,
      required final PublicProfile publicProfile,
      required final PrivateProfile privateProfile}) = _$_UserData;

  @override
  String get name;
  @override
  PublicProfile get publicProfile;
  @override
  PrivateProfile get privateProfile;
  @override
  @JsonKey(ignore: true)
  _$$_UserDataCopyWith<_$_UserData> get copyWith =>
      throw _privateConstructorUsedError;
}
