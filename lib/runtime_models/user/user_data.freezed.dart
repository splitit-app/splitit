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
  String get uid => throw _privateConstructorUsedError;
  set uid(String value) =>
      throw _privateConstructorUsedError; //required String name,
  PublicProfile get publicProfile =>
      throw _privateConstructorUsedError; //required String name,
  set publicProfile(PublicProfile value) => throw _privateConstructorUsedError;
  PrivateProfile get privateProfile => throw _privateConstructorUsedError;
  set privateProfile(PrivateProfile value) =>
      throw _privateConstructorUsedError;
  List<PublicProfile> get registeredFriends =>
      throw _privateConstructorUsedError;
  set registeredFriends(List<PublicProfile> value) =>
      throw _privateConstructorUsedError;
  List<PublicProfile> get nonRegisteredFriends =>
      throw _privateConstructorUsedError;
  set nonRegisteredFriends(List<PublicProfile> value) =>
      throw _privateConstructorUsedError;

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
      {String uid,
      PublicProfile publicProfile,
      PrivateProfile privateProfile,
      List<PublicProfile> registeredFriends,
      List<PublicProfile> nonRegisteredFriends});

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
    Object? uid = null,
    Object? publicProfile = null,
    Object? privateProfile = null,
    Object? registeredFriends = null,
    Object? nonRegisteredFriends = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      publicProfile: null == publicProfile
          ? _value.publicProfile
          : publicProfile // ignore: cast_nullable_to_non_nullable
              as PublicProfile,
      privateProfile: null == privateProfile
          ? _value.privateProfile
          : privateProfile // ignore: cast_nullable_to_non_nullable
              as PrivateProfile,
      registeredFriends: null == registeredFriends
          ? _value.registeredFriends
          : registeredFriends // ignore: cast_nullable_to_non_nullable
              as List<PublicProfile>,
      nonRegisteredFriends: null == nonRegisteredFriends
          ? _value.nonRegisteredFriends
          : nonRegisteredFriends // ignore: cast_nullable_to_non_nullable
              as List<PublicProfile>,
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
      {String uid,
      PublicProfile publicProfile,
      PrivateProfile privateProfile,
      List<PublicProfile> registeredFriends,
      List<PublicProfile> nonRegisteredFriends});

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
    Object? uid = null,
    Object? publicProfile = null,
    Object? privateProfile = null,
    Object? registeredFriends = null,
    Object? nonRegisteredFriends = null,
  }) {
    return _then(_$_UserData(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      publicProfile: null == publicProfile
          ? _value.publicProfile
          : publicProfile // ignore: cast_nullable_to_non_nullable
              as PublicProfile,
      privateProfile: null == privateProfile
          ? _value.privateProfile
          : privateProfile // ignore: cast_nullable_to_non_nullable
              as PrivateProfile,
      registeredFriends: null == registeredFriends
          ? _value.registeredFriends
          : registeredFriends // ignore: cast_nullable_to_non_nullable
              as List<PublicProfile>,
      nonRegisteredFriends: null == nonRegisteredFriends
          ? _value.nonRegisteredFriends
          : nonRegisteredFriends // ignore: cast_nullable_to_non_nullable
              as List<PublicProfile>,
    ));
  }
}

/// @nodoc

class _$_UserData extends _UserData with DiagnosticableTreeMixin {
  _$_UserData(
      {required this.uid,
      required this.publicProfile,
      required this.privateProfile,
      required this.registeredFriends,
      required this.nonRegisteredFriends})
      : super._();

  @override
  String uid;
//required String name,
  @override
  PublicProfile publicProfile;
  @override
  PrivateProfile privateProfile;
  @override
  List<PublicProfile> registeredFriends;
  @override
  List<PublicProfile> nonRegisteredFriends;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserData(uid: $uid, publicProfile: $publicProfile, privateProfile: $privateProfile, registeredFriends: $registeredFriends, nonRegisteredFriends: $nonRegisteredFriends)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserData'))
      ..add(DiagnosticsProperty('uid', uid))
      ..add(DiagnosticsProperty('publicProfile', publicProfile))
      ..add(DiagnosticsProperty('privateProfile', privateProfile))
      ..add(DiagnosticsProperty('registeredFriends', registeredFriends))
      ..add(DiagnosticsProperty('nonRegisteredFriends', nonRegisteredFriends));
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserDataCopyWith<_$_UserData> get copyWith =>
      __$$_UserDataCopyWithImpl<_$_UserData>(this, _$identity);
}

abstract class _UserData extends UserData {
  factory _UserData(
      {required String uid,
      required PublicProfile publicProfile,
      required PrivateProfile privateProfile,
      required List<PublicProfile> registeredFriends,
      required List<PublicProfile> nonRegisteredFriends}) = _$_UserData;
  _UserData._() : super._();

  @override
  String get uid;
  set uid(String value);
  @override //required String name,
  PublicProfile get publicProfile; //required String name,
  set publicProfile(PublicProfile value);
  @override
  PrivateProfile get privateProfile;
  set privateProfile(PrivateProfile value);
  @override
  List<PublicProfile> get registeredFriends;
  set registeredFriends(List<PublicProfile> value);
  @override
  List<PublicProfile> get nonRegisteredFriends;
  set nonRegisteredFriends(List<PublicProfile> value);
  @override
  @JsonKey(ignore: true)
  _$$_UserDataCopyWith<_$_UserData> get copyWith =>
      throw _privateConstructorUsedError;
}
