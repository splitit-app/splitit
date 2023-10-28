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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_PublicProfileDTOCopyWith<$Res>
    implements $PublicProfileDTOCopyWith<$Res> {
  factory _$$_PublicProfileDTOCopyWith(
          _$_PublicProfileDTO value, $Res Function(_$_PublicProfileDTO) then) =
      __$$_PublicProfileDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uid, String? createdBy, String name});
}

/// @nodoc
class __$$_PublicProfileDTOCopyWithImpl<$Res>
    extends _$PublicProfileDTOCopyWithImpl<$Res, _$_PublicProfileDTO>
    implements _$$_PublicProfileDTOCopyWith<$Res> {
  __$$_PublicProfileDTOCopyWithImpl(
      _$_PublicProfileDTO _value, $Res Function(_$_PublicProfileDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? createdBy = freezed,
    Object? name = null,
  }) {
    return _then(_$_PublicProfileDTO(
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
class _$_PublicProfileDTO extends _PublicProfileDTO {
  _$_PublicProfileDTO({required this.uid, this.createdBy, required this.name})
      : super._();

  factory _$_PublicProfileDTO.fromJson(Map<String, dynamic> json) =>
      _$$_PublicProfileDTOFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PublicProfileDTO &&
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
  _$$_PublicProfileDTOCopyWith<_$_PublicProfileDTO> get copyWith =>
      __$$_PublicProfileDTOCopyWithImpl<_$_PublicProfileDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PublicProfileDTOToJson(
      this,
    );
  }
}

abstract class _PublicProfileDTO extends PublicProfileDTO {
  factory _PublicProfileDTO(
      {required final String uid,
      final String? createdBy,
      required final String name}) = _$_PublicProfileDTO;
  _PublicProfileDTO._() : super._();

  factory _PublicProfileDTO.fromJson(Map<String, dynamic> json) =
      _$_PublicProfileDTO.fromJson;

  @override
  String get uid;
  @override
  String? get createdBy;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_PublicProfileDTOCopyWith<_$_PublicProfileDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
