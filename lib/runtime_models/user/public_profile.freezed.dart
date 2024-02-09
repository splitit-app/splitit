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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PublicProfile {
  String get uid => throw _privateConstructorUsedError;
  set uid(String value) => throw _privateConstructorUsedError;
  PublicProfile? get createdBy => throw _privateConstructorUsedError;
  set createdBy(PublicProfile? value) => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;

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
  $Res call({String uid, PublicProfile? createdBy, String name});

  $PublicProfileCopyWith<$Res>? get createdBy;
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
    Object? uid = null,
    Object? createdBy = freezed,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as PublicProfile?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PublicProfileCopyWith<$Res>? get createdBy {
    if (_value.createdBy == null) {
      return null;
    }

    return $PublicProfileCopyWith<$Res>(_value.createdBy!, (value) {
      return _then(_value.copyWith(createdBy: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PublicProfileImplCopyWith<$Res>
    implements $PublicProfileCopyWith<$Res> {
  factory _$$PublicProfileImplCopyWith(
          _$PublicProfileImpl value, $Res Function(_$PublicProfileImpl) then) =
      __$$PublicProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uid, PublicProfile? createdBy, String name});

  @override
  $PublicProfileCopyWith<$Res>? get createdBy;
}

/// @nodoc
class __$$PublicProfileImplCopyWithImpl<$Res>
    extends _$PublicProfileCopyWithImpl<$Res, _$PublicProfileImpl>
    implements _$$PublicProfileImplCopyWith<$Res> {
  __$$PublicProfileImplCopyWithImpl(
      _$PublicProfileImpl _value, $Res Function(_$PublicProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? createdBy = freezed,
    Object? name = null,
  }) {
    return _then(_$PublicProfileImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as PublicProfile?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PublicProfileImpl extends _PublicProfile {
  _$PublicProfileImpl({required this.uid, this.createdBy, required this.name})
      : super._();

  @override
  String uid;
  @override
  PublicProfile? createdBy;
  @override
  String name;

  @override
  String toString() {
    return 'PublicProfile(uid: $uid, createdBy: $createdBy, name: $name)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PublicProfileImplCopyWith<_$PublicProfileImpl> get copyWith =>
      __$$PublicProfileImplCopyWithImpl<_$PublicProfileImpl>(this, _$identity);
}

abstract class _PublicProfile extends PublicProfile {
  factory _PublicProfile(
      {required String uid,
      PublicProfile? createdBy,
      required String name}) = _$PublicProfileImpl;
  _PublicProfile._() : super._();

  @override
  String get uid;
  set uid(String value);
  @override
  PublicProfile? get createdBy;
  set createdBy(PublicProfile? value);
  @override
  String get name;
  set name(String value);
  @override
  @JsonKey(ignore: true)
  _$$PublicProfileImplCopyWith<_$PublicProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
