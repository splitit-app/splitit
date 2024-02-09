// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'public_profile_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PublicProfileDTO _$PublicProfileDTOFromJson(Map<String, dynamic> json) {
  return _PublicProfileDTO.fromJson(json);
}

/// @nodoc
mixin _$PublicProfileDTO {
  String get uid => throw _privateConstructorUsedError;
  String? get createdBy => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PublicProfileDTOCopyWith<PublicProfileDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PublicProfileDTOCopyWith<$Res> {
  factory $PublicProfileDTOCopyWith(
          PublicProfileDTO value, $Res Function(PublicProfileDTO) then) =
      _$PublicProfileDTOCopyWithImpl<$Res, PublicProfileDTO>;
  @useResult
  $Res call({String uid, String? createdBy, String name});
}

/// @nodoc
class _$PublicProfileDTOCopyWithImpl<$Res, $Val extends PublicProfileDTO>
    implements $PublicProfileDTOCopyWith<$Res> {
  _$PublicProfileDTOCopyWithImpl(this._value, this._then);

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
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PublicProfileDTOImplCopyWith<$Res>
    implements $PublicProfileDTOCopyWith<$Res> {
  factory _$$PublicProfileDTOImplCopyWith(_$PublicProfileDTOImpl value,
          $Res Function(_$PublicProfileDTOImpl) then) =
      __$$PublicProfileDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uid, String? createdBy, String name});
}

/// @nodoc
class __$$PublicProfileDTOImplCopyWithImpl<$Res>
    extends _$PublicProfileDTOCopyWithImpl<$Res, _$PublicProfileDTOImpl>
    implements _$$PublicProfileDTOImplCopyWith<$Res> {
  __$$PublicProfileDTOImplCopyWithImpl(_$PublicProfileDTOImpl _value,
      $Res Function(_$PublicProfileDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? createdBy = freezed,
    Object? name = null,
  }) {
    return _then(_$PublicProfileDTOImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PublicProfileDTOImpl implements _PublicProfileDTO {
  _$PublicProfileDTOImpl(
      {required this.uid, this.createdBy, required this.name});

  factory _$PublicProfileDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$PublicProfileDTOImplFromJson(json);

  @override
  final String uid;
  @override
  final String? createdBy;
  @override
  final String name;

  @override
  String toString() {
    return 'PublicProfileDTO(uid: $uid, createdBy: $createdBy, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PublicProfileDTOImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uid, createdBy, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PublicProfileDTOImplCopyWith<_$PublicProfileDTOImpl> get copyWith =>
      __$$PublicProfileDTOImplCopyWithImpl<_$PublicProfileDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PublicProfileDTOImplToJson(
      this,
    );
  }
}

abstract class _PublicProfileDTO implements PublicProfileDTO {
  factory _PublicProfileDTO(
      {required final String uid,
      final String? createdBy,
      required final String name}) = _$PublicProfileDTOImpl;

  factory _PublicProfileDTO.fromJson(Map<String, dynamic> json) =
      _$PublicProfileDTOImpl.fromJson;

  @override
  String get uid;
  @override
  String? get createdBy;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$PublicProfileDTOImplCopyWith<_$PublicProfileDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
